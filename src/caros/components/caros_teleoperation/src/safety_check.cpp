#include <caros/safety_check.h>
#include <iostream>
#include <vector>
#include <ros/ros.h>

namespace caros
{
SafetyCheck::SafetyCheck()
    : workcell_(NULL),
      device_(NULL),
      state_(),
      ik_solver_(nullptr),
      detector_(nullptr),
      constraint_(),
      sampler_(nullptr),
      metric_(rw::math::MetricFactory::makeEuclidean<rw::math::Q>()),
      planner_(nullptr),
      extend_(0.02)
{
}

bool SafetyCheck::init(rw::common::Ptr<rw::models::WorkCell> &workcell, rw::common::Ptr<rw::models::Device> &device)
{
  workcell_ = workcell;
  device_ = device;
  state_ = workcell->getDefaultState();
  ik_solver_ = rw::common::ownedPtr(new rw::invkin::JacobianIKSolver(device_, state_));
  detector_ = rw::common::ownedPtr(new rw::proximity::CollisionDetector(
      workcell_, rwlibs::proximitystrategies::ProximityStrategyFactory::makeDefaultCollisionStrategy()));
  constraint_ = rw::pathplanning::PlannerConstraint::make(detector_, device_, state_);
  sampler_ = rw::pathplanning::QSampler::makeConstrained(rw::pathplanning::QSampler::makeUniform(device_),
                                                         constraint_.getQConstraintPtr());
  planner_ = rwlibs::pathplanners::RRTPlanner::makeQToQPlanner(
      constraint_, sampler_, metric_, extend_, rwlibs::pathplanners::RRTPlanner::PlannerType::RRTConnect);
  return true;
}

bool SafetyCheck::inCollision(rw::math::Q &qcurrent, const rw::math::Transform3D<> &target)
{
  device_->setQ(qcurrent, state_);
  std::vector<rw::math::Q> solutions = ik_solver_->solve(target, state_);
  if (solutions.empty())
  {
    return true;
  }
  rw::math::Q closest = solutions.front();
  if (constraint_.inCollision(closest))
  {
    return true;
  }
  //   std::cout << "The solutions is: " << closest << std::endl;
  qcurrent = closest;
  return false;
}

bool SafetyCheck::inCollision(const rw::math::Q &target)
{
  return constraint_.inCollision(target);
}

rw::math::Transform3D<double> SafetyCheck::velocity_limit(const rw::math::Q &qcurrent,
                                                          const rw::math::Transform3D<> &target)
{
  return target;
  // TODO(prier): Find out if this is the intended behaviour of the velocity_limit function
  double max_dist = 0.005;
  device_->setQ(qcurrent, state_);
  rw::math::Transform3D<double> T_current = device_->baseTend(state_);
  rw::math::Vector3D<double> heading = T_current.P() - target.P();
  double dist = heading.norm2();
  if (dist > max_dist)
  {
    heading = heading * (max_dist / dist);
    rw::math::Transform3D<double> new_target(T_current.P() + heading, target.R());
    std::cout << "VEL LIMIT" << std::endl;
    return new_target;
  }
  return target;
}

bool SafetyCheck::query(const rw::math::Q &start, const rw::math::Q &goal, rw::trajectory::QPath &path, int maxtime)
{
  path.clear();
  if (inCollision(start))
  {
    ROS_WARN("start in collision");
    return false;
  }
  if (inCollision(goal))
  {
    ROS_WARN("goal in collision");
    return false;
  }
  planner_->query(start, goal, path, maxtime);
  return path.size() > 1;
}
}  // namespace caros

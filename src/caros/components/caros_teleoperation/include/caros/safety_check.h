#ifndef CAROS_SAFETY_CHECK_H
#define CAROS_SAFETY_CHECK_H

#include <rw/math.hpp>
#include <rw/common/Ptr.hpp>
#include <rw/kinematics/State.hpp>
#include <rw/models/WorkCell.hpp>
#include <rw/pathplanning/PlannerConstraint.hpp>
#include <rw/proximity/CollisionDetector.hpp>
#include <rwlibs/proximitystrategies/ProximityStrategyFactory.hpp>

#include <rw/math/MetricFactory.hpp>
#include <rw/invkin/JacobianIKSolver.hpp>

#include <rwlibs/pathplanners/rrt/RRTPlanner.hpp>
#include <rw/pathplanning/QToQPlanner.hpp>
#include <rw/pathplanning/QSampler.hpp>
#include <rw/trajectory.hpp>
#include <rw/trajectory/Path.hpp>
#include <ros/ros.h>

namespace caros
{
class SafetyCheck
{
 private:
  rw::common::Ptr<rw::models::WorkCell> workcell_;
  rw::common::Ptr<rw::models::Device> device_;
  rw::kinematics::State state_;
  rw::common::Ptr<rw::invkin::JacobianIKSolver> ik_solver_;
  rw::proximity::CollisionDetector::Ptr detector_;
  rw::pathplanning::PlannerConstraint constraint_;
  rw::pathplanning::QSampler::Ptr sampler_;
  rw::math::QMetric::Ptr metric_;
  rw::pathplanning::QToQPlanner::Ptr planner_;
  double extend_;

 public:
  SafetyCheck();
  bool init(rw::common::Ptr<rw::models::WorkCell> &workcell, rw::common::Ptr<rw::models::Device> &device);
  bool inCollision(rw::math::Q &qcurrent, const rw::math::Transform3D<> &target);
  bool inCollision(const rw::math::Q &target);
  rw::math::Transform3D<double> velocity_limit(const rw::math::Q &qcurrent, const rw::math::Transform3D<> &target);
  bool query(const rw::math::Q &start, const rw::math::Q &goal, rw::trajectory::QPath &path, int maxtime = 1);
};
}  // namespace caros

#endif  // CAROS_SAFETY_CHECK_H

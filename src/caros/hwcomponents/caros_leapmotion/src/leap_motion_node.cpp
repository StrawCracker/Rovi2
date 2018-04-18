#include <caros/leap_motion_node.h>
#include <string>

namespace caros
{
LeapMotionNode::LeapMotionNode(const ros::NodeHandle& nodehandle)
    : CarosNodeServiceInterface(nodehandle, 50),
      listener_(),
      controller_(),
      nh_(nodehandle),
      pose_pub_(nh_.advertise<caros_sensor_msgs::PoseSensorState>("poses", 1)),
      button_pub_(nh_.advertise<caros_sensor_msgs::ButtonSensorState>("buttons", 1)),
      rate_(50),
      running_(true),
      digital_buttons_({false, false, false}),  // NOLINT(whitespace/braces)
      analog_buttons_({0, 0, 0}),  // NOLINT(whitespace/braces)
      pose_state_(),
      button_state_()
{
}

LeapMotionNode::~LeapMotionNode()
{
  controller_.removeListener(listener_);
}

bool LeapMotionNode::activateHook()
{
  /* This hook should be used to establish connections to the hardware and activate the hardware.
   * It is also here that other interfaces should be initialised
   */

  for (size_t i = 0; i < digital_buttons_.size(); ++i)
  {
    button_state_.digital_ids.push_back(std::string("digital_btn_") + std::to_string(i));
  }

  for (size_t i = 0; i < analog_buttons_.size(); ++i)
  {
    button_state_.analog_ids.push_back(std::string("analog_btn_") + std::to_string(i));
  }

  if (analog_buttons_.size() <= MIN_BTNS)
  {
    CAROS_FATALERROR("Need at least " + std::to_string(MIN_BTNS) + " buttons", LESS_THAN_MIN_ANA_BTNS);
  }
  else
  {
    button_state_.analog_ids.at(ENABLE) = "made_fist";
    button_state_.analog_ids.at(GRIPPER) = "open_pinch";
  }

  button_state_.analog.resize(analog_buttons_.size());
  button_state_.digital.resize(digital_buttons_.size());

  std::string frame_id;
  double max_pub_frequency;
  nh_.param("frame", frame_id, std::string("leapmotion_base"));
  nh_.param("rate", max_pub_frequency, 50.0);

  pose_state_.header.frame_id = frame_id;
  this->setLoopRateFrequency(max_pub_frequency);

  controller_.addListener(listener_);
  controller_.setPolicy(Leap::Controller::POLICY_BACKGROUND_FRAMES);

  return true;
}

bool LeapMotionNode::recoverHook(const std::string& error_msg, const int64_t error_code)
{
  bool resolved = false;

  /* Switch on error codes */
  switch (error_code)
  {
    default:
      ROS_WARN_STREAM("Trying to recover from: " << error_code << " - " << error_msg);
      resolved = false;
  }

  return resolved;
}

void LeapMotionNode::runLoopHook()
{
  bool detected = listener_.pose.hand_detected;
  // TODO(niive12): See if there is a need for a ROI where I get false positives.
  /*
          *			Leap::Vector lower_limit(0, 0, 0),  upper_limit(0, 0, 0);
          *			detected = (listener.pose.p2.x < lower_limit.x)
          *			detected = (listener.pose.p2.y < lower_limit.y)
          *			detected = (listener.pose.p2.z < lower_limit.z)
          *			detected = (listener.pose.p2.x > upper_limit.x)
          *			detected = (listener.pose.p2.y > upper_limit.y)
          *			detected = (listener.pose.p2.z > upper_limit.z)
          */

  if (detected)
  {
    append_pose(listener_.pose);
    analog_buttons_.at(ENABLE) = (listener_.pose.made_fist ? 0.0 : 1.0);
    analog_buttons_.at(GRIPPER) = listener_.pose.pinch;
  }
  else
  {
    no_measurement();
  }

  publish_pose();
  publish_btn();
}

void LeapMotionNode::errorLoopHook()
{
  /* Not implemented yet */
}

void LeapMotionNode::fatalErrorLoopHook()
{
  /* Not implemented yet */
}

void LeapMotionNode::stop()
{
  controller_.removeListener(listener_);
}

geometry_msgs::Transform LeapMotionNode::get_pose(const hand_pose& leap_pose)
{
  geometry_msgs::Transform transform;
  Leap::Vector vec_a = leap_pose.p2 - leap_pose.p1;
  Leap::Vector vec_b = leap_pose.p3 - leap_pose.p1;
  Leap::Vector unit_vec = vec_a * (1 / vec_a.magnitude());

  Leap::Vector normal_vec = vec_a.cross(vec_b);

  float w = normal_vec.y / (normal_vec.magnitude());

  float theta = acos(w) / 2.0;
  float scale = sin(theta);
  w = cos(theta);
  Leap::Vector quaternion = unit_vec * scale;

  // TODO(niive12): Don't rotate the coordinate system directly.
  transform.translation.x = -leap_pose.p1.x;
  transform.translation.y = leap_pose.p1.z;
  transform.translation.z = leap_pose.p1.y;
  transform.rotation.x = quaternion.x;
  transform.rotation.y = quaternion.y;
  transform.rotation.z = quaternion.z;
  transform.rotation.w = w;
  return transform;
}

void LeapMotionNode::publish_pose()
{
  pose_state_.header.stamp = ros::Time::now();
  pose_pub_.publish(pose_state_);

  pose_state_.poses.clear();
  pose_state_.ids.clear();
  pose_state_.qualities.clear();
}

void LeapMotionNode::publish_btn()
{
  button_state_.analog.at(ENABLE) = analog_buttons_.at(ENABLE);
  button_state_.analog.at(GRIPPER) = analog_buttons_.at(GRIPPER);
  button_state_.header.stamp = ros::Time::now();
  button_pub_.publish(button_state_);
}

void LeapMotionNode::no_measurement()
{
  geometry_msgs::Transform transform;
  transform.translation.x = 0;
  transform.translation.y = 0;
  transform.translation.z = 0;
  transform.rotation.x = 0;
  transform.rotation.y = 0;
  transform.rotation.z = 0;
  transform.rotation.w = 0;
  pose_state_.poses.push_back(transform);
  pose_state_.ids.push_back(pose_state_.poses.size() - 1);
  pose_state_.qualities.push_back(0.0);

  analog_buttons_.at(ENABLE) = 0.0;
}

void LeapMotionNode::append_pose(const hand_pose& leap_pose)
{
  pose_state_.poses.push_back(get_pose(leap_pose));
  pose_state_.ids.push_back(pose_state_.poses.size() - 1);
  pose_state_.qualities.push_back(
      0.5);  // TODO(niive12): Estimate qualities of measurements, but this is not used in teleoperation
}

}  // namespace caros

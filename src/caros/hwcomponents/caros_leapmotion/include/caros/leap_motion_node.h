#ifndef CAROS_LEAP_MOTION_NODE_H
#define CAROS_LEAP_MOTION_NODE_H

#include <caros/leap_sensor.h>
#include <caros/caros_node_service_interface.h>
#include <caros_sensor_msgs/PoseSensorState.h>
#include <caros_sensor_msgs/ButtonSensorState.h>
#include <geometry_msgs/Transform.h>

#include <ros/ros.h>

#include <memory>
#include <string>
#include <vector>

namespace caros
{
class LeapMotionNode : public caros::CarosNodeServiceInterface
{
 public:
  explicit LeapMotionNode(const ros::NodeHandle& nodehandle);
  virtual ~LeapMotionNode();

  enum LEAPMOTIONNODE_ERRORCODE
  {
    LESS_THAN_MIN_ANA_BTNS = 0
  };

  /**
   * @brief leap_publisher
   * updates values and publishes them over ROS. Run in a thread.
   */
  void leap_publisher();
  /**
   * @brief stop
   * stops the publishing thread
   */
  void stop();
  /**
   * @brief get_pose
   * Takes three points and calculates a pose consisting of a quaternion and a position
   * @var leap_pose
   * The leap measurements, containing p1, p2 and p3
   * The normal vector to the plane is compared against the y-axis and the two first points is used as the EAA axis of
   * the rotation.
   * p2 is used as the position
   * @return pose
   */
  geometry_msgs::Transform get_pose(const hand_pose& leap_pose);
  /**
   * @brief no_measurement
   * If there is no hand in the scene, a default measurement of 0,0,0 is used.
   */
  void no_measurement();
  /**
   * @brief publish_pose
   * publishes the pose over ROS
   */
  void publish_pose();
  /**
   * @brief publish_btn
   * publishes the fist and pinch data as two analog buttons, to use them in the teleoperation
   */
  void publish_btn();
  /**
   * @brief append_pose
   * appends the last measured pose to the ros message.
   */
  void append_pose(const hand_pose& leap_pose);

 protected:
  bool activateHook();
  bool recoverHook(const std::string& error_msg, const int64_t error_code);

  void runLoopHook();
  void errorLoopHook();
  void fatalErrorLoopHook();

 private:
  leap_controller listener_;
  Leap::Controller controller_;
  ros::NodeHandle nh_;
  ros::Publisher pose_pub_;
  ros::Publisher button_pub_;
  ros::Rate rate_;
  bool running_;
  std::vector<bool> digital_buttons_;
  std::vector<float> analog_buttons_;
  caros_sensor_msgs::PoseSensorState pose_state_;
  caros_sensor_msgs::ButtonSensorState button_state_;
  enum button_names
  {
    ENABLE = 0,
    GRIPPER = 1,
    MIN_BTNS = 2
  };
};
}  // namespace caros

#endif  // CAROS_LEAP_MOTION_NODE_H

#include <caros/leap_sensor.h>
#include <ros/ros.h>
#include <iomanip>
#include <string>

namespace caros
{
void leap_controller::onFrame(const Leap::Controller& controller)
{
  pose.detect_fist(controller);
  pose.detect_pinch(controller);
  pose.get_pose(controller);
  is_right_hand(controller);
}

void leap_controller::is_right_hand(const Leap::Controller& controller)
{
  const Leap::Frame frame = controller.frame();
  if (frame.hands().count() != 1 || frame.gestures().count() != 0)
  {
    return;
  }
  Leap::HandList hands = frame.hands();
  for (Leap::HandList::const_iterator hl = hands.begin(); hl != hands.end(); ++hl)
  {
    const Leap::Hand hand = *hl;
    right_hand = !hand.isLeft();
  }
  return;
}

void leap_controller::print(const Leap::Controller& controller)
{
  const Leap::Frame frame = controller.frame();
  if (frame.hands().count() != 1 || frame.gestures().count() != 0)
  {
    return;
  }
  Leap::HandList hands = frame.hands();
  for (Leap::HandList::const_iterator hl = hands.begin(); hl != hands.end(); ++hl)
  {
    const Leap::Hand hand = *hl;
    std::string handType = hand.isLeft() ? "Left hand" : "Right hand";
    std::cout << handType << ", id: " << hand.id() << std::endl;
    std::cout << std::setprecision(4) << std::fixed << hand.palmPosition() << std::endl;
    const Leap::FingerList fingers = hand.fingers();
    for (Leap::FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl)
    {
      const Leap::Finger finger = *fl;
      std::cout << std::setprecision(4) << std::fixed << fingerNames[finger.type()]
                << finger.bone(static_cast<Leap::Bone::Type>(1)).prevJoint()
                << finger.bone(static_cast<Leap::Bone::Type>(1)).nextJoint() << std::endl;
    }
  }
}

void leap_controller::onInit(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Initialized");
}

void leap_controller::onConnect(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Connected");
  controller.enableGesture(Leap::Gesture::TYPE_KEY_TAP);
}

void leap_controller::onDisconnect(const Leap::Controller& controller)
{
  // Note: not dispatched when running in a debugger.
  ROS_INFO("Leap Motion Disconnected");
}

void leap_controller::onExit(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Exited");
}

void leap_controller::onFocusGained(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Focus Gained");
}

void leap_controller::onFocusLost(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Focus Lost");
}

void leap_controller::onDeviceChange(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Device Changed");
  const Leap::DeviceList devices = controller.devices();

  for (int i = 0; i < devices.count(); ++i)
  {
    ROS_INFO_STREAM("id: " << devices[i].toString());
    ROS_INFO_STREAM("  isStreaming: " << (devices[i].isStreaming() ? "true" : "false"));
  }
}

void leap_controller::onServiceConnect(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Service Connected");
}

void leap_controller::onServiceDisconnect(const Leap::Controller& controller)
{
  ROS_INFO("Leap Motion Service Disconnected");
}

}  // namespace caros

#ifndef CAROS_LEAP_SENSOR_H
#define CAROS_LEAP_SENSOR_H

#include <iostream>
#include <cstring>
#include <cmath>
#include <string>
#include "../../src/leap/include/Leap.h"

namespace caros
{
struct hand_pose
{
  Leap::Vector p1;
  Leap::Vector p2;
  Leap::Vector p3;
  hand_pose(Leap::Vector wrist, Leap::Vector mid, Leap::Vector ring)
      : p1(wrist), p2(mid), p3(ring), hand_detected(false), made_fist(true), pinch(0)
  {
  }
  hand_pose() : hand_pose(Leap::Vector(0.0, 0.0, 0.0), Leap::Vector(0.0, 0.0, 0.0), Leap::Vector(0.0, 0.0, 0.0))
  {
  }

  bool hand_detected;
  bool made_fist;
  float pinch;
  void get_pose(const Leap::Controller &controller)
  {
    hand_detected = (controller.frame().hands().count() == 1 && controller.frame().gestures().count() == 0);
    if (hand_detected)
    {
      Leap::HandList hands = controller.frame().hands();
      const Leap::Hand hand = *hands.begin();
      const Leap::FingerList fingers = hand.fingers();
      p1 = fingers.fingerType(Leap::Finger::TYPE_MIDDLE)[0].bone(Leap::Bone::TYPE_METACARPAL).prevJoint() * 0.005;
      p2 = fingers.fingerType(Leap::Finger::TYPE_PINKY)[0].bone(Leap::Bone::TYPE_METACARPAL).nextJoint() * 0.005;
      p3 = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(Leap::Bone::TYPE_METACARPAL).nextJoint() * 0.005;
    }
  }
  void detect_fist(const Leap::Controller &controller)
  {
    hand_detected = (controller.frame().hands().count() == 1 && controller.frame().gestures().count() == 0);
    made_fist = true;
    if (hand_detected)
    {
      Leap::HandList hands = controller.frame().hands();
      const Leap::Hand hand = *hands.begin();
      const Leap::FingerList fingers = hand.fingers();

      float desired_angle = 75.0 * M_PI / 180.0;
      float thres = 0;
      {
        Leap::Vector a = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(Leap::Bone::TYPE_METACARPAL).nextJoint();
        Leap::Vector b = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(Leap::Bone::TYPE_PROXIMAL).nextJoint();
        thres = (a - b).magnitude() * 2 / 3.0;
      }

      int dist_cnt(0), bent_cnt(0);

      for (Leap::FingerList::const_iterator fl = ++fingers.begin(); fl != fingers.end(); ++fl)
      {
        Leap::Vector at_wrist = (*fl).bone(Leap::Bone::TYPE_METACARPAL).prevJoint();
        Leap::Vector at_mcp = (*fl).bone(Leap::Bone::TYPE_METACARPAL).nextJoint();
        Leap::Vector at_tip = (*fl).bone(Leap::Bone::TYPE_DISTAL).nextJoint();
        if ((at_wrist.distanceTo(at_mcp) + thres) > at_wrist.distanceTo(at_tip))
        {
          ++dist_cnt;
        }
      }

      for (Leap::FingerList::const_iterator fl = ++fingers.begin(); fl != fingers.end(); ++fl)
      {
        Leap::Vector metacarpal = (*fl).bone(Leap::Bone::TYPE_METACARPAL).direction();
        Leap::Vector proximal = (*fl).bone(Leap::Bone::TYPE_PROXIMAL).direction();
        if (metacarpal.angleTo(proximal) > desired_angle)
        {
          ++bent_cnt;
        }
      }

      made_fist = dist_cnt >= 4;
      made_fist |= bent_cnt >= 4;
    }
  }
  void detect_pinch(const Leap::Controller &controller)
  {
    hand_detected = (controller.frame().hands().count() == 1 && controller.frame().gestures().count() == 0);
    if (hand_detected)
    {
      Leap::HandList hands = controller.frame().hands();
      const Leap::Hand hand = *hands.begin();
      const Leap::FingerList fingers = hand.fingers();

      Leap::Vector tip_thumb, beg_index, tip_index;
      tip_thumb = fingers.fingerType(Leap::Finger::TYPE_THUMB)[0].bone(Leap::Bone::TYPE_DISTAL).nextJoint();
      beg_index = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(Leap::Bone::TYPE_METACARPAL).nextJoint();
      tip_index = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(Leap::Bone::TYPE_DISTAL).nextJoint();

      float max_length = 0, min_length;
      for (int b = 1; b < 4; ++b)
      {
        Leap::Vector p, n;
        p = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(static_cast<Leap::Bone::Type>(b)).prevJoint();
        n = fingers.fingerType(Leap::Finger::TYPE_INDEX)[0].bone(static_cast<Leap::Bone::Type>(b)).nextJoint();
        max_length += (p - n).magnitude();
        min_length = (p - n).magnitude() / 2;
      }
      pinch = (tip_thumb.distanceTo(tip_index) - min_length) / max_length;
      if (pinch < 0.0)
        pinch = 0.0;
      if (pinch > 1.0)
        pinch = 1.0;
    }
  }
};

class leap_controller : public Leap::Listener
{
 public:
  virtual void onInit(const Leap::Controller &);
  virtual void onConnect(const Leap::Controller &);
  virtual void onDisconnect(const Leap::Controller &);
  virtual void onExit(const Leap::Controller &);
  virtual void onFrame(const Leap::Controller &);
  virtual void onFocusGained(const Leap::Controller &);
  virtual void onFocusLost(const Leap::Controller &);
  virtual void onDeviceChange(const Leap::Controller &);
  virtual void onServiceConnect(const Leap::Controller &);
  virtual void onServiceDisconnect(const Leap::Controller &);
  hand_pose pose;
  bool right_hand;

 private:
  void is_right_hand(const Leap::Controller &controller);
  void print(const Leap::Controller &controller);
};

const std::string fingerNames[] = {"Thumb", "Index", "Middle", "Ring", "Pinky"};
const std::string boneNames[] = {"Metacarpal", "Proximal", "Middle", "Distal"};
const std::string stateNames[] = {"STATE_INVALID", "STATE_START", "STATE_UPDATE", "STATE_END"};
}  // namespace caros

#endif  // CAROS_LEAP_SENSOR_H

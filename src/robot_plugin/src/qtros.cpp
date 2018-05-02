#include "qtros.h"
#include <math.h>
#include <caros_common_msgs/Q.h>
#include <caros/common_robwork.h>
#include <cameranode/Point.h>


#define SUBSCRIBER "/caros_universalrobot/caros_serial_device_service_interface/robot_state"

QtROS::QtROS()
{

  ROS_INFO("Connected to roscore");

  // Subscribe to caros robot state
  _sub = _nh.subscribe(SUBSCRIBER, 1, &QtROS::stateCallback, this);
  _robot = new caros::SerialDeviceSIProxy(_nh, "caros_universalrobot");
  
  _sub2 = _nh.subscribe("/cameranode/output",1,&QtROS::cloud_cb, this);
  quitfromgui = false;
  
}

void QtROS::quitNow()
{
  quitfromgui = true;
}

void QtROS::cloud_cb(cameranode::Point point)
{
        std::cout<<"xyz "<<point.x<<point.y<<point.z<<"\n";;

        emit ballCallback(point.x,point.y,point.z);
}

void QtROS::stateCallback(const caros_control_msgs::RobotState & msg)
{
    
    // Extract configuration from RobotState message
    caros_common_msgs::Q conf = msg.q;
    
    // Convert from ROS msg to Robwork Q
    rw::math::Q conf_rw = caros::toRw(conf);
    
    // Emit the configuration
    emit newState(conf_rw);

}

void QtROS::moveHome()
{
    ROS_INFO("Called move home");
    float speed = 0.1;
    rw::math::Q home = rw::math::Q(6, 0, -M_PI/2.0, 0, -M_PI/2.0, 0, 0);
    _robot->moveServoQ(home, speed);
}

void QtROS::setQ(rw::math::Q q)
{
    ROS_INFO("Called setQ");
    float speed = 0.1;
    _robot->moveServoQ(q, speed);
}

rw::math::Q QtROS::getQ()
{
  ROS_INFO("Called getQ");
  return _robot->getQ();
}




void QtROS::run()
{
  
  while(ros::ok() && !quitfromgui)
  {
    ros::spinOnce(); 
    
    // Adjust the sleep to, according to how often you will check ROS for new messages
    ros::Duration(0.1).sleep();
  }
  if (!quitfromgui)
  {
    emit rosQuits();
    ROS_INFO("ROS-Node Terminated\n"); 
  }
}

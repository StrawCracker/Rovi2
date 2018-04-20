#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <rrt/RRTAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>

class RRT_Planner
{
protected:
  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<rrt::RRTAction> as_; // NodeHandle instance must be created before this line. Otherwise strange error occurs.
 // ros::Subscriber sub = nh_.subscribe<cameranode::Point> ("/cameranode/output", 1, );
  std::string action_name_;
  // create messages that are used to published feedback/result
  rrt::RRTFeedback feedback_;
  rrt::RRTResult result_;
  ros::Subscriber sub_;
  cameranode::Point ballPoint_;// = new cameranode::Point;

public:

  RRT_Planner(std::string name) :
    //as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
    as_(nh_, name, boost::bind(&RRT_Planner::executeCB, this, _1), false),
    action_name_(name)
  {
    sub_ = nh_.subscribe("/cameranode/output",1,&RRT_Planner::cloud_cb, this);
    as_.start();
  }

  ~RRT_Planner(void)
  {
  }
  
  void cloud_cb(cameranode::Point point)
  {
    ballPoint_ = point;
  }
  
  void executeCB(const rrt::RRTGoalConstPtr &goal)
  {
    //any action coding done here
    //rw::math::Q testQ(6,1.0,2.0,3.0,4.0,5.0,6.0);
    

    //convert result to QPath and send on RRTResult
    //as_.setSucceeded(result_); will become succeeded and publish the result
  }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "rrt_server");

  RRT_Planner temp("RRT_Planner");
  ros::spin();

  return 0;
}

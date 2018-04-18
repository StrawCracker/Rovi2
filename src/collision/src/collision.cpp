#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <collision/CollisionAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>

class CollisionDetector
{
protected:
  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<collision::CollisionAction> as_; // NodeHandle instance must be created before this line. Otherwise strange error occurs.
 // ros::Subscriber sub = nh_.subscribe<cameranode::Point> ("/cameranode/output", 1, );
  std::string action_name_;
  // create messages that are used to published feedback/result
  collision::CollisionFeedback feedback_;
  collision::CollisionResult result_;
  ros::Subscriber sub_;
  cameranode::Point ballPoint_;// = new cameranode::Point;

public:

  CollisionDetector(std::string name) :
    //as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
    as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
    action_name_(name)
  {
    sub_ = nh_.subscribe("/cameranode/output",1,&CollisionDetector::cloud_cb, this);
    as_.start();
  }

  ~CollisionDetector(void)
  {
  }
  
  void cloud_cb(cameranode::Point point)
  {
    ballPoint_ = point;
  }
  
  void executeCB(const collision::CollisionGoalConstPtr &goal)
  {
    //do any action codin here

    
  }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "collision_server");

  CollisionDetector temp("collisionDetector");
  ros::spin();

  return 0;
}

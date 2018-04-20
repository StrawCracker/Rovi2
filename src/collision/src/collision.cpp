#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <collision/CollisionAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>

#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>

#include "/home/resps/rovi2/Rovi2/src/Project_lib/CellManager.hpp"

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
    //convert CollisionGoal from vector to QPath
    rw::trajectory::Path<rw::math::Q> path = getPath(goal->path);
    
    //as_.setSucceeded(result_); will become succeeded and publish the result
  }

  rw::trajectory::Path<rw::math::Q> getPath(std::vector<double> vec)
  {
  
    std::vector<rw::math::Q> vecQ;

    int numberOfQ = vec.size()/6;

    for(int i =0;i<numberOfQ;i++)
    {
      rw::math::Q q(6, vec[i*6], vec[i*6+1], vec[i*6+2], vec[i*6+3], vec[i*6+4], vec[i*6+5]); 
      vecQ.push_back(q); 
    }

    return rw::trajectory::Path<rw::math::Q>(vecQ);

  }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "collision_server");
  
  CollisionDetector temp("collisionDetector");
  ros::spin();

  return 0;
}

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <collision/CollisionAction.h>
#include <rrt/RRTAction.h>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "mainlogic");

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<collision::CollisionAction> ac_col("collisionDetector", true);
  actionlib::SimpleActionClient<rrt::RRTAction> ac_rrt("RRT_Planner", true);
  //fibonacci is the name of the server to connect to

  ROS_INFO("Waiting for action servers to start.");
  // wait for the action server to start
  ac_col.waitForServer(); //will wait for infinite time
  ac_rrt.waitForServer();

  ROS_INFO("Action servers started, sending goal.");
  // send a goal to the action
  collision::CollisionGoal goal_col;
  rrt::RRTGoal goal_rrt;
  goal_col.order = 20;
  goal_rrt.order = 20;
  ac_col.sendGoal(goal_col);
  ac_rrt.sendGoal(goal_rrt);

  //wait for the action to return
  //bool finished_before_timeout = ac_col.waitForResult(ros::Duration(30.0));
  bool finished_before_timeout = ac_rrt.waitForResult(ros::Duration(30.0));

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac_col.getState();
    ROS_INFO("Action collision finished: %s",state.toString().c_str());
    state = ac_rrt.getState();
    ROS_INFO("Action rrt finished: %s",state.toString().c_str());
  }
  else
    ROS_INFO("Action did not finish before the time out.");

  //exit
  return 0;
}

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <collision/CollisionAction.h>
#include <rrt/RRTAction.h>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>





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


void addPathToColl(rw::trajectory::Path<rw::math::Q> path, collision::CollisionGoal& goal_col)
{
  

  int size =path.size()*6;

  //double  resPath[size];

  std::vector<double> resPath;
  for(int i =0; i< path.size();i++)
  {
    for(int j = 0; j<6;j++)
      resPath.push_back(path[i](j));
    

  }

  

  goal_col.path = resPath;



}

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
  //ac_col.waitForServer(); //will wait for infinite time
  //ac_rrt.waitForServer();

  ROS_INFO("Action servers started, sending goal.");
  // send a goal to the action
  collision::CollisionGoal goal_col;
  rrt::RRTGoal goal_rrt;
  goal_col.order = 20;

  goal_rrt.order = 20;

  std::vector<double> testd;
  for(int i = 0;i<12;i++)
    testd.push_back(i*0.1);

  rw::trajectory::Path<rw::math::Q> pathTest = getPath(testd);
  std::cout<<pathTest[0]<<"\n";
  std::cout<<pathTest[1]<<"\n";


  //Works!!
  //addPathToColl(testPath,goal_col);
  
  
  
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


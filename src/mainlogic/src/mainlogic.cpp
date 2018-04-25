#include <ros/ros.h>
#include <queue>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <collision/CollisionAction.h>
#include <rrt/RRTAction.h>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>
#include <caros_control_msgs/RobotState.h>
#include <caros/serial_device_si_proxy.h>
#include <caros_common_msgs/Q.h>
#include <caros/common_robwork.h>

#include <chrono>
#include <ctime>
#define SUBSCRIBER "/caros_universalrobot/caros_serial_device_service_interface/robot_state"

std::chrono::steady_clock::time_point start;
std::chrono::steady_clock::time_point end;

std::queue<rw::math::Q> currentPath;


ros::Subscriber _sub;
caros::SerialDeviceSIProxy* _robot;

rw::math::Q newGoal;

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

bool Qequals(rw::math::Q q1, rw::math::Q q2, double tolerance)
{
  if((q1-q2).norm2()<tolerance)
    return true;
  return false;
}

void stateCallback(const caros_control_msgs::RobotState & msg)
{
    
    // Extract configuration from RobotState message
    caros_common_msgs::Q conf = msg.q;
    
    // Convert from ROS msg to Robwork Q
    rw::math::Q conf_rw = caros::toRw(conf);
    if(Qequals(conf_rw,newGoal,0.001) && !currentPath.empty())
    {

    newGoal = currentPath.front();
    currentPath.pop();
    _robot->moveServoQ(newGoal,0.1);
    }
    
    // Emit the configuration
    //emit newState(conf_rw);

}


void doneCb_col(const actionlib::SimpleClientGoalState& state,
            const collision::CollisionResultConstPtr& result)
{

  //end = std::chrono::steady_clock::now() ;

  //typedef std::chrono::duration<int,std::milli> millisecs_t ;
  //millisecs_t duration( std::chrono::duration_cast<millisecs_t>(end-start) ) ;
  //std::cout << duration.count() << " milliseconds.\n" ;

  ROS_INFO("Finished in state [%s]", state.toString().c_str());
  ROS_INFO("Answer: %i", result->isGood);
  //ros::shutdown();
}

void doneCb_rrt(const actionlib::SimpleClientGoalState& state,
            const rrt::RRTResultConstPtr& result)
{

  ROS_INFO("Finished in state [%s]", state.toString().c_str());
  
  rw::trajectory::Path<rw::math::Q> newPath = getPath(result->path);

  for(size_t i =0; i< newPath.size();i++)
    currentPath.push(newPath[i]);




  //ros::shutdown();
}

// void runCurrentPath()
// {
//   while(!currentPath.empty())
//   {
//     rw::math::Q newGoal = currentPath

//   }

// }

int main (int argc, char **argv)
{
  ros::init(argc, argv, "mainlogic");
  std::cout<<"Ros INIT! \n";
  //Subscripe to robot state
  ros::NodeHandle _nh;
  _sub = _nh.subscribe(SUBSCRIBER, 1, &stateCallback);
  std::cout<<"Subscribe!\n";
  _robot = new caros::SerialDeviceSIProxy(_nh, "caros_universalrobot");
  std::cout<<"Get robot\n";

  rw::math::Q temp2(6, 1, 2, 3, 4, 5, 6);
  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<collision::CollisionAction> ac_col("collisionDetector", true);
  actionlib::SimpleActionClient<rrt::RRTAction> ac_rrt("RRT_Planner", true);
  //fibonacci is the name of the server to connect to

  ROS_INFO("Waiting for action servers to start.");
  // wait for the action server to start
  //ac_col.waitForServer(); //will wait for infinite time
  ac_rrt.waitForServer();

  ROS_INFO("Action servers started, sending goal.");
  // send a goal to the action
  collision::CollisionGoal goal_col;
  rrt::RRTGoal goal_rrt;
  goal_col.order = 20;

  goal_rrt.order = 20;



  
  // rw::trajectory::Path<rw::math::Q> pathTest = getPath(testd);
  // std::cout<<pathTest[0]<<"\n";
  // std::cout<<pathTest[1]<<"\n\n\n";


  //Works!!
  //addPathToColl(pathTest,goal_col);
  
  
  //start = std::chrono::steady_clock::now() ;
  //ac_col.sendGoal(goal_col, &doneCb_col);


  //Test rrt
  std::vector<double> pointA;
  std::vector<double> pointB;
  //Home pos
  pointA.push_back(0);
  pointA.push_back(-1.57);
  pointA.push_back(0 );
  pointA.push_back(-1.57);
  pointA.push_back(0);
  pointA.push_back(0);

  //Start pos from sim
  pointB.push_back(-1.6);
  pointB.push_back(-1.73);
  pointB.push_back(-2.2);
  pointB.push_back(-0.81);
  pointB.push_back(1.6);
  pointB.push_back(-0.03);
  

  //goal_rrt.start=pointA;
  //goal_rrt.end=pointB;

  bool aToB = true;

  std::cout<<"Starter while(true)!\n";
  while(true)
  {
    ros::spinOnce();
    if(!currentPath.empty())
      continue;


    if(aToB)
    {
      goal_rrt.start=pointA;
      goal_rrt.end=pointB;
    }
    else
    {
      goal_rrt.start=pointB;
      goal_rrt.end=pointA;
    }






    ac_rrt.sendGoal(goal_rrt, &doneCb_rrt);
    //wait for the action to return
    //bool finished_before_timeout = ac_col.waitForResult(ros::Duration(30.0));
    bool finished_before_timeout = ac_rrt.waitForResult(ros::Duration(60.0));

    if (finished_before_timeout)
    {
      //actionlib::SimpleClientGoalState state = ac_col.getState();
      //ROS_INFO("Action collision finished: %s",state.toString().c_str());
      //ROS_INFO("I finished fast");
      //actionlib::SimpleActionClient<collision::CollisionAction>::ResultConstPtr result = ac_col.getResult();
      //ROS_INFO("Result from collision free is: %s", result);
      actionlib::SimpleClientGoalState state = ac_rrt.getState();
      ROS_INFO("Action rrt finished: %s",state.toString().c_str());
    }
    else
      ROS_INFO("Action did not finish before the time out.");

    aToB= !aToB;

    

  }
  //exit
  return 0;
}


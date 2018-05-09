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
#include <cmath>
#define SUBSCRIBER "/caros_universalrobot/caros_serial_device_service_interface/robot_state"

std::chrono::steady_clock::time_point start;
std::chrono::steady_clock::time_point end;
typedef std::chrono::duration<float,std::milli> millisecs_t ;

bool hasPrinted = false;
bool Ball = false;

double afstand = 0;

rw::math::Q conf_rw;
std::deque<rw::math::Q> currentPath;
actionlib::SimpleActionClient<collision::CollisionAction> *ac_col;
actionlib::SimpleActionClient<rrt::RRTAction> *ac_rrt;


ros::Subscriber _sub;
caros::SerialDeviceSIProxy* _robot;

rrt::RRTGoal goal_rrt;
collision::CollisionGoal goal_col;

rw::math::Q newGoal;
double greed =-1.0;
bool RRTReady =true;

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
    conf_rw = caros::toRw(conf);


    millisecs_t duration2( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
		if(duration2.count()<10000)
		{
      //std::cout << "counting " << duration2.count() << std::endl;
			return;

		}

    //print currentPath
    if(!hasPrinted)
    {
      double dist = 0;
      for(int i = 1; i < currentPath.size(); i++)
      {
       dist += (currentPath[i-1]-currentPath[i]).norm2();
      }
      std::cout << "optimal path length: " << dist << std::endl;
      hasPrinted = true;
      newGoal = conf_rw;
      //goal_rrt.ballInPath = true;
      //goal_col.ballInPath = true;
      Ball = true;
      std::cout << "ballInPath set" << std::endl;
    }
   
    if(Qequals(conf_rw,newGoal,0.2) && !currentPath.empty())
    {
      rw::math::Q temp = newGoal;
      newGoal = currentPath.front();

      afstand += (temp - newGoal).norm2();

      if(currentPath.size()>1 || Qequals(conf_rw,newGoal,0.01))
      {
       currentPath.pop_front();
      }
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

  if(!result->isGood)
  {
    currentPath.clear();

    greed=-1.0;
    std::cout<<"Collision!! greed: -1.0\n";
    //std::cout << "does collision know of the ball?: " ;
    // if(goal_col.ballInPath)
    // {
    //   std::cout << "YES!" << std::endl;
    // }
    // else
    // {
    //   std::cout << "NO!" << std::endl;
    // }
    // std::cout << "does Ball know of the ball?: " ;
    // if(Ball)
    // {
    //   std::cout << "YES!" << std::endl;
    // }
    // else
    // {
    //   std::cout << "NO!" << std::endl;
    // }
  }

  //Start next collision test
  
  goal_col.order = 20;
  goal_col.ballInPath = Ball;
  //goal

  rw::trajectory::Path<rw::math::Q>collisionPath;
  //Add the current path to collision
  for(size_t i =0; i<currentPath.size();i++)
    collisionPath.push_back(currentPath[i]);
    
  addPathToColl(collisionPath,goal_col);
  //std::cout << "col path size: " << collisionPath.size() << std::endl;
  ac_col->sendGoal(goal_col, &doneCb_col);


  //ROS_INFO("Finished Collision [%s]", state.toString().c_str());
  //ROS_INFO("Answer: %i", result->isGood);
  //ros::shutdown();
}

void doneCb_rrt(const actionlib::SimpleClientGoalState& state,
            const rrt::RRTResultConstPtr& result)
{
  RRTReady=true;
  //ROS_INFO("Finished in state [%s]", state.toString().c_str());
  
  rw::trajectory::Path<rw::math::Q> newPath = getPath(result->path);
  if(newPath.size()==0)
    return;
  //Measure size
  double tempGreed=0;
  for(size_t i=1; i<newPath.size();i++)
    tempGreed+= (newPath[i-1]-newPath[i]).normInf();


 
  tempGreed *= 1.5;

  if(tempGreed<greed ||greed<=0)
  {

    //Merge new path with current path..
    int tempSize =currentPath.size();

    double minDist = 100;
    int newPathIndex = 0;

    for(size_t i=0; i<newPath.size();i++)
    {
      double dist =(newPath[i]-conf_rw).norm2();

      if(dist<minDist)
      {
        minDist=dist;
        newPathIndex = i;

      }
      
    }
    //std::cout<<"Current dist: "<<(newPath[0]-conf_rw).norm2()<<"\n";

    //std::cout<<"Improved dist: "<<(newPath[newPathIndex]-conf_rw).norm2()<<"\n";    

    currentPath.clear();
    for(size_t i =newPathIndex; i< newPath.size();i++)
      currentPath.push_back(newPath[i]);





    //for(int i = 0;i< tempSize;i++)
    //  currentPath.pop_front();

    if(currentPath.empty())
      //If nothing got added to the path
      greed = -1.0;
    else
      greed= tempGreed;  
    //std::cout << "New greed: " << greed<<"\n";

    //Check where to splice the old path and new path.
  }


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
  ac_col = new actionlib::SimpleActionClient<collision::CollisionAction> ("collisionDetector", true);
  ac_rrt = new actionlib::SimpleActionClient<rrt::RRTAction>("RRT_Planner", true);
  
  //fibonacci is the name of the server to connect to

  ROS_INFO("Waiting for action servers to start.");
  // wait for the action server to start
  //ac_col.waitForServer(); //will wait for infinite time
  ac_rrt->waitForServer();

  ROS_INFO("Action servers started, sending goal.");
  // send a goal to the action
  
  //rrt::RRTGoal goal_rrt;
  

  goal_rrt.order = 20;

  //Start next collision test
  //collision::CollisionGoal goal_col;
  goal_col.order = 20;
  //goal

  // rw::trajectory::Path<rw::math::Q>collisionPath;
  // //Add the current path to collision
  // for(size_t i =0; i<currentPath.size();i++)
  //   collisionPath.push_back(currentPath[i]);
    
  // addPathToColl(collisionPath,goal_col);
  goal_col.ballInPath = Ball;
  ac_col->sendGoal(goal_col, &doneCb_col);

  
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
  pointB.push_back(-1.601);
  pointB.push_back(-2.037);
  pointB.push_back(-2.203);
  pointB.push_back(-0.436);
  pointB.push_back(1.6);
  pointB.push_back(-0.031);
  
 //qgoal: Q[6]{-0.0686, -1.5387, -0.0946, -1.4633, 0.0630045, 1.77636e-15}
  //goal_rrt.start=pointA;
  //goal_rrt.end=pointB;

  bool aToB = true;
  goal_rrt.ballInPath = false;
  goal_col.ballInPath = false;
  std::cout<<"Starter while(true)!\n";
  start = std::chrono::steady_clock::now() ;
   while(true)
  {
    //std::cout<<"while(true)\n";
    ros::spinOnce();
    //std::cout << "wubawuba" << std::endl;
    if(!RRTReady)
      continue;

    

    //goal reached!
    if(Qequals(conf_rw,pointA,0.1) && aToB==false)
    {
      std::cout<<"Reached point A!\n";
      aToB = true;
      greed = -1.0;
      hasPrinted = false;
      //goal_rrt.ballInPath = false;
      //goal_col.ballInPath = false;
      std::cout << "ballInPath reset" << std::endl;
      std::cout << "actually travelled distance: " << afstand << std::endl;
      afstand = 0;
      Ball = false;
      start =  std::chrono::steady_clock::now() ;
    }
    if(Qequals(conf_rw,pointB,0.1) && aToB == true)
    {
      std::cout<<"Reached point B!\n";
      aToB = false;
      greed = -1.0;
      hasPrinted = false;
      //goal_rrt.ballInPath = false;
      //goal_col.ballInPath = false;
      std::cout << "ballInPath reset" << std::endl;
      std::cout << "actually travelled distance: " << afstand << std::endl;
      afstand = 0;
      Ball = false;
      start =  std::chrono::steady_clock::now() ;
    }
    //std::cout<<"Er det her?\n";
    if(currentPath.size()<10 && greed!= -1.0)
      continue;

    int jumpAhead=5;
    if(currentPath.size()>jumpAhead)
    {
      //goal_rrt.start=std::vector<double> {currentPath[jumpAhead][0],currentPath[jumpAhead][1],currentPath[jumpAhead][2],currentPath[jumpAhead][3],currentPath[jumpAhead][4],currentPath[jumpAhead][5]};
      millisecs_t duration( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
      if(duration.count()>10000)
      {
        //std::cout << "counting " << duration2.count() << std::endl;
        goal_rrt.start=std::vector<double> {currentPath[jumpAhead][0],currentPath[jumpAhead][1],currentPath[jumpAhead][2],currentPath[jumpAhead][3],currentPath[jumpAhead][4],currentPath[jumpAhead][5]};

      }
      else
      {
        goal_rrt.start=std::vector<double> {conf_rw[0],conf_rw[1],conf_rw[2],conf_rw[3],conf_rw[4],conf_rw[5]};
      }  
    
    }
    else
    {
      goal_rrt.start=std::vector<double> {conf_rw[0],conf_rw[1],conf_rw[2],conf_rw[3],conf_rw[4],conf_rw[5]};
      
      greed=-1;
    }
    if(aToB)
      goal_rrt.end=pointB;
    else
      goal_rrt.end=pointA;
    





    //std::cout<<"Start RRT greed: "<<greed<<"\n";
    goal_rrt.greed = greed;
    goal_rrt.ballInPath = Ball;
    
    
      ac_rrt->sendGoal(goal_rrt, &doneCb_rrt);
      RRTReady=false;
    
    //wait for the action to return
    //bool finished_before_timeout = ac_col.waitForResult(ros::Duration(30.0));
    // bool finished_before_timeout = ac_rrt->waitForResult(ros::Duration(60.0));

    // if (finished_before_timeout)
    // {
    //   //actionlib::SimpleClientGoalState state = ac_col.getState();
    //   //ROS_INFO("Action collision finished: %s",state.toString().c_str());
    //   //ROS_INFO("I finished fast");
    //   //actionlib::SimpleActionClient<collision::CollisionAction>::ResultConstPtr result = ac_col.getResult();
    //   //ROS_INFO("Result from collision free is: %s", result);
    //   actionlib::SimpleClientGoalState state = ac_rrt->getState();
    //   //ROS_INFO("Action rrt finished: %s",state.toString().c_str());
    // }
    // else
    // {
      
    //   ROS_INFO("RRT did not finish before the time out.");
    // }

    

    

  }
  //exit
  return 0;
}


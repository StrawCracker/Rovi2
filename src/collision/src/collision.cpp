#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <collision/CollisionAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>
#include <chrono>
#include <ctime>

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
  CellManager Cellman;

public:

  CollisionDetector(std::string name) :
    //as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
    as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
    action_name_(name)
  {
    sub_ = nh_.subscribe("/cameranode/output",1,&CollisionDetector::cloud_cb, this);
    as_.start();
    ballPoint_.x=-1;
    ballPoint_.y=-1;
    ballPoint_.z=-1;
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
    std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now() ;
    rw::trajectory::Path<rw::math::Q> path = getPath(goal->path);
    if(goal->ballInPath)
    {
      Cellman.moveBall(0.0,-0.343,0.513);
    }
    else
    {
      //Cellman.moveBall(ballPoint_.x,ballPoint_.y,ballPoint_.z);
      Cellman.moveBall(-1,-1,-1);
    }

    std::cout<<"Placed ball at "<< ballPoint_<<std::endl;

    rw::math::Q qLast;// = path.back();
    //path.pop_back();
    std::cout<<"Got Q \n"<< "Size of path " << path.size()<<std::endl;

    bool collisionFree = true;

    if(path.size()>=2)
    {
      for(int i =1;i< path.size() && collisionFree ;i++)
      //while(collisionFree && !path.empty())
      {
        std::cout<<"While! \n";
        //auto qNew = path
        collisionFree= !collisionInPath(path[i],path[i-1]);

        //qLast=qNew;
      }
    }

    //Debug
    if(collisionFree)
    {
      std::cout << "Clear \n";
    }
    else
    {
      std::cout << "STOP!!! \n";
    }

    result_.isGood = collisionFree;
    std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now() ;

    typedef std::chrono::duration<int,std::milli> millisecs_t ;
    millisecs_t duration( std::chrono::duration_cast<millisecs_t>(end-start) ) ;
    std::cout << duration.count() << " milliseconds.\n" ;
    
    as_.setSucceeded(result_); //will become succeeded and publish the result
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

  bool collisionInPath(rw::math::Q q1, rw::math::Q q2)
  {
    //extended binary
    double eps =0.01;


    rw::math::Q delta_Q = q2-q1;
    int n_b = delta_Q.norm2()/eps; //Number steps q1->q2
    int levels = ceil(log2(n_b)); //log2(n_b)

    //Debug
    std::cout << "    "<<q1<<std::endl;
    std::cout << "    "<<q2<<std::endl;
    std::cout << "    Number of checks: " << n_b << std::endl;
    


    int counter2 = 0;
    for(int i = 1; i <= levels; i++)
    {
        double steps = pow(2, i-1);
        rw::math::Q step = (delta_Q/delta_Q.norm2())*((eps*pow(2,levels))/steps);
        for(int j = 1; j <= steps; j++)
        {
            rw::math::Q q_i = q1+(j-0.5)*step;
            if(pastQ(q1, q2, q_i))
            {
                continue;
            }

            Cellman._device->setQ(q_i,Cellman._state);
            //device->setQ(q_i, state);
            //CollisionDetector::QueryResult data;
            counter2++;
            //if(detector->inCollision(state,&data))
            if(Cellman.inCollision())
            {
                
                std::cout << "collision detected at " << q_i << std::endl;
                std::cout << "after " << i << " steps" << std::endl;
                return true;
            }
        }
        
    }

    return false;
  }

  bool pastQ(rw::math::Q q1, rw::math::Q q2, rw::math::Q qi)
  {
      rw::math::Q delta_q = (q2 - q1);
      delta_q = delta_q * 0.005;
      double temp1 = (qi-q2).norm2();
      double temp2 = (qi-(q2+delta_q)).norm2();
      if(temp1 > temp2)
      {
          return true;
      }
      else
      {
          return false;
      }
  }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "collision_server");

  CollisionDetector temp("collisionDetector");
  ros::spin();

  return 0;
}

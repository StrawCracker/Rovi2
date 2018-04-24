#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <rrt/RRTAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>
#include "/home/resps/rovi2/Rovi2/src/Project_lib/CellManager.hpp"
#include "qTree.h"

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
  CellManager Cellman;
  vector<qTree*> tree;

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
	
	rw::math::Q qstart(6,1.0,2.0,3.0,4.0,5.0,6.0);
	rw::math::Q qgoal(6,0,0,0,0,0,0);
	

	double eps = 0.1;
	while(true)
	{
		//Sample random point
		rw::math::Q randomPoint = Cellman.randomQ();

		//Find nearest neighbour
		qTree* neighbour = nearestNeighbour(randomPoint);
		rw::math::Q qneighbour = *(neighbour->data);


		//Normalize
		rw::math::Q neighToRand= randomPoint-qneighbour;
		neighToRand=(neighToRand/neighToRand.norm2())*eps;

		rw::math::Q newPoint = qneighbour+ neighToRand;

		//Check for collision
		if(collisionInPath(newPoint,qneighbour))
			continue;

		addQ(&newPoint, neighbour);

		//double 
		//if()



	}


	addQ(&qstart,nullptr);
	
    


    


	//convert result to QPath and send on RRTResult
	//as_.setSucceeded(result_); will become succeeded and publish the result


	}

	qTree* nearestNeighbour(rw::math::Q point)
	{
		int closest =-1; 
		double smallestDist=1000;
		for(int i =0; i<tree.size();i++)
		{
			double dist=(*(tree[i]->data)-point).norm2();
			if(dist<smallestDist)
			{
				smallestDist = dist;
				closest = i;
			}

		}

		return tree[closest];
	}

	

	

	void addQ(Q * qNode_, qTree * qParent_)
	{
		qTree qNode(qNode_, qParent_);
		tree.push_back(&qNode);
	}

	bool collisionInPath(rw::math::Q newPoint, rw::math::Q neighbor)
  {
    //Check if new point is in collision
	Cellman._device->setQ(newPoint,Cellman._state);
	if(Cellman.inCollision())
		return true;



    //extended binary
    double eps =0.01;


    rw::math::Q delta_Q = newPoint-neighbor;
    int n_b = delta_Q.norm2()/eps; //Number steps q1->q2
    int levels = ceil(log2(n_b)); //log2(n_b)

    
    


    int counter2 = 0;
    for(int i = 1; i <= levels; i++)
    {
        double steps = pow(2, i-1);
        rw::math::Q step = (delta_Q/delta_Q.norm2())*((eps*pow(2,levels))/steps);
        for(int j = 1; j <= steps; j++)
        {
            rw::math::Q q_i = newPoint+(j-0.5)*step;
            if(pastQ(newPoint, neighbor, q_i))
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

  //Part of extended binary search 
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

	// vector<qTree*> getTree()
	// {
	// 	for (int i = 0; i < this->rrtTree.size(); i++)
	// 	{
	// 	    std::cout << this->rrtTree[i] << '\n';
	// 	}
		
	// 	return this->rrtTree;
	// }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "rrt_server");

  RRT_Planner temp("RRT_Planner");
  ros::spin();

  return 0;
}

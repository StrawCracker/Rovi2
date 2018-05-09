#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <rrt/RRTAction.h>
#include <cameranode/Point.h>
#include <std_msgs/String.h>
#include <iostream>
#include <time.h> 
#include <rw/math/Q.hpp>
#include <rw/trajectory.hpp>
#include "/home/resps/rovi2/Rovi2/src/Project_lib/CellManager.hpp"
#include "qTree.h"
#include <rwlibs/algorithms/kdtree/KDTreeQ.hpp>
#include <chrono>
#include <ctime>

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
  vector<qTree> tree;
  rwlibs::algorithms::KDTreeQ<int> *kdTree;
  


public:

	RRT_Planner(std::string name) :
	//as_(nh_, name, boost::bind(&CollisionDetector::executeCB, this, _1), false),
	as_(nh_, name, boost::bind(&RRT_Planner::executeCB, this, _1), false),
	action_name_(name)
	{
		sub_ = nh_.subscribe("/cameranode/output",1,&RRT_Planner::cloud_cb, this);
		as_.start();
		ballPoint_.x=-1;
		ballPoint_.y=-1;
		ballPoint_.z=-1;
		srand (time(NULL));
	}

	~RRT_Planner(void)
	{
		tree.clear();
		tree.shrink_to_fit();
	}

	void cloud_cb(cameranode::Point point)
	{
		ballPoint_ = point;
	}

	void executeCB(const rrt::RRTGoalConstPtr &goal)
	{
	//any action coding done here
	//rw::math::Q testQ(6,1.0,2.0,3.0,4.0,5.0,6.0);
	 kdTree= new rwlibs::algorithms::KDTreeQ<int>(6);
	//Place ball;
	if(goal->ballInPath)
	{
		Cellman.moveBall(0.0,-0.343,0.513);
	}
	else
	{
		//Cellman.moveBall(ballPoint_.x,ballPoint_.y,ballPoint_.z);
		Cellman.moveBall(-1,-1,-1);
	}
	//convert start and goal
	rw::math::Q qstart(6,goal->end[0],goal->end[1],goal->end[2],goal->end[3],goal->end[4],goal->end[5]);
	rw::math::Q qgoal(6,goal->start[0],goal->start[1],goal->start[2],goal->start[3],goal->start[4],goal->start[5]);

	std::cout<<"qstart: "<< qstart<<"\n";
	std::cout<<"qgoal: "<< qgoal<<"\n";
	
	addQ(qstart,-1);

	std::cout<<"Start på tree\n";

	rw::trajectory::Path<rw::math::Q> path;

	

    typedef std::chrono::duration<float,std::milli> millisecs_t ;
    

	float eps = 0.1;
	float closeToGoal=100;
	int size2=0;
	
	while(size2<10000)
	{
			//std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now() ;
		size2=tree.size();
		if(size2%1000==0)
			std::cout<<"Tree size: "<<size2<<"\n";
		//Sample random point
		rw::math::Q randomPoint = Cellman.randomQ();

		if((rand() % 1000)<=1)
		 	randomPoint = qgoal;

			// millisecs_t duration( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
			// std::cout <<"SampleQ: " << duration.count() << " milliseconds.\n" ;
		//std::cout<<"Starting nearestNeighbour\n";
		//Find nearest neighbour
		int neighbour = nearestNeighbour(randomPoint);
		//std::cout <<"NN index: "<<neighbour<<"\n";
		rw::math::Q qneighbour = (tree[neighbour].data);
		//std::cout<<"Ending nearestNeighbour\n\n";
			// duration= millisecs_t( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
			// std::cout <<"Nearest neighbour: " << duration.count() << " milliseconds.\n" ;

		//Normalize
		rw::math::Q neighToRand= randomPoint-qneighbour;
		neighToRand=(neighToRand/neighToRand.norm2())*eps;
		

		rw::math::Q newPoint = qneighbour+ neighToRand;

			// duration= millisecs_t( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
			// std::cout <<"Normalize: " << duration.count() << " milliseconds.\n" ;
		//std::cout<<"Checking collision\n";
		//Check for collision
		if(collisionInPath(newPoint,qneighbour))
			continue;

			//duration= millisecs_t( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
			//std::cout <<"Collision: " << duration.count() << " milliseconds.\n" ;
		//std::cout<< newPoint<<"\n";
		addQ(newPoint, neighbour);
		//addQ(&newPoint, nullptr);
			//duration= millisecs_t( std::chrono::duration_cast<millisecs_t>(std::chrono::steady_clock::now()-start) ) ;
			//std::cout <<"AddQ: " << duration.count() << " milliseconds.\n" ;
		//Check if it's done
		double distToGoal = (qgoal-newPoint).norm2();
		if(distToGoal<closeToGoal)
		{
			closeToGoal=distToGoal;
			std::cout<<"Dist mini: "<< closeToGoal<<" TreeSize: "<< tree.size()<<"\n";
		}
		//std::cout<<"DistToGoal: "<< distToGoal<<"\n";
		if(distToGoal<eps*3)
		{
			std::cout<<"Maybe goal??\n";
			if(collisionInPath(newPoint,qgoal))
			{
				std::cout<<"Close to goal but a collision :(\n";
				continue;
			}


			std::cout<<"GOAL#################################\n";
			
			//Add path to return it
			path.push_back(qgoal);
			path.push_back(newPoint);
			

			int traceBackLeaf = neighbour;

			while(tree[traceBackLeaf].parent!=-1)
			{
				path.push_back(tree[traceBackLeaf].data);

				traceBackLeaf=tree[traceBackLeaf].parent;

			}
			path.push_back(tree[traceBackLeaf].data);

			//path.push_back(qstart);
			break;


		}



	}

	//Length of between all points

	// std::cout<<"\n\n\nCheck the length between points:\n";
	// for(int i =1;i< path.size();i++)
	// 	std::cout<<(path[i-1]-path[i]).norm2()<<"\n";

	std::cout<<"END!\n";
	//convert result to QPath and send on RRTResult
	result_.path = pathToDouble(path);

	path.clear();
	tree.clear();

	as_.setSucceeded(result_); //will become succeeded and publish the result


	}

	std::vector<double> pathToDouble(rw::trajectory::Path<rw::math::Q> path)
	{
	
		std::vector<double> resPath;
		for(int i =0; i< path.size();i++)
		{
			for(int j = 0; j<6;j++)
			resPath.push_back(path[i](j));
		}

		return resPath;
	}

	int nearestNeighbour(rw::math::Q point)
	{
		// int closest =-1; 
		// double smallestDist=1000;
		// for(size_t i =0; i<tree.size();i++)
		// {
			
		// 	double dist=((tree[i].data)-point).norm2();
			
		// 	if(dist<smallestDist)
		// 	{
		// 		smallestDist = dist;
		// 		closest = i;
		// 	}

		// }
		//std::cout<<"\tNearest index: "<<closest<<"\n";
		//std::cout<<"\tsmallestDist: "<<smallestDist<<"\n";
		//return closest;

		return kdTree->nnSearch(point).value;
	}

	

	

	void addQ(Q qNode_, int qParent_)
	{
		kdTree->addNode(qNode_,tree.size());
		qTree qNode(qNode_, qParent_);
		tree.push_back(qNode);
		//std::cout<<"dasasd\n";
	}

	bool collisionInPath(rw::math::Q newPoint, rw::math::Q neighbor)
  {
    //Check if new point is in collision
	Cellman._device->setQ(newPoint,Cellman._state);
	if(Cellman.inCollision())
		return true;
	
	//return false;



    //extended binary
    double eps =0.05;


    rw::math::Q delta_Q = newPoint-neighbor;
    int n_b = delta_Q.norm2()/eps; //Number steps q1->q2
    int levels = ceil(log2(n_b)); //log2(n_b)

    
    //std::cout<<"n_b :"<<n_b<<"\n";
	//std::cout<<"levels :"<<levels<<"\n";

    //int counter2 = 0;
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
            //counter2++;
            //if(detector->inCollision(state,&data))
            if(Cellman.inCollision())
            {
                
                //std::cout << "collision detected at " << q_i << std::endl;
                //std::cout << "after " << i << " steps" << std::endl;
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
      
      
    return false;
      
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

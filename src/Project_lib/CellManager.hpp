#ifndef CELLMANAGER_HPP
#define CELLMANAGER_HPP




//#include "/home/jacob/Desktop/Rovi2Project/catkin_ws/build/robot_plugin/ui_RobotPlugin.h"
#include <ros/ros.h>
//#include <rw/rw.hpp>
#include <rws/RobWorkStudioPlugin.hpp>
#include <rw/models.hpp>
#include <rw/math/Q.hpp>
#include <rw/models/Device.hpp>

#include <rw/proximity.hpp>
#include <rw/math/Transform3D.hpp>
#include <rw/models/WorkCell.hpp>
#include <rw/kinematics/FixedFrame.hpp>
#include <rw/kinematics/MovableFrame.hpp>
#include <rw/math/Transform3D.hpp>
#include <rw/math/RPY.hpp>

#include <rw/loaders/Model3DFactory.hpp>
#include <rw/loaders/GeometryFactory.hpp>
#include <rw/models/RigidObject.hpp>

// Initialize plugin using QT5
class CellManager {
public:
        CellManager();
        virtual ~CellManager();
	//Default functions for loading workcell and ball
	bool spawnBall();
	bool moveBall(double x, double y, double z);
	bool setBallSize(double radius);
	bool inCollision();
	rw::models::WorkCell::Ptr _wc;
	rw::kinematics::State _state;
	rw::models::Device::Ptr _device;
private:	

	rw::proximity::CollisionDetector::Ptr detector;
	//CollisionDetector detector;
	rw::kinematics::MovableFrame* mBallFrame;
};

#endif /*RINGONHOOKPLUGIN_HPP_*/

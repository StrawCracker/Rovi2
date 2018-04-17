#include "rw/rw.hpp"
#include "caros/serial_device_si_proxy.h"
#include "ros/package.h"
#include <iostream>

class URRobot {
	using Q = rw::math::Q;

private:
	ros::NodeHandle nh;
	rw::models::WorkCell::Ptr wc;
	rw::models::Device::Ptr device;
	rw::kinematics::State state;
	caros::SerialDeviceSIProxy* robot;

public:
	URRobot()
	{
		auto packagePath = ros::package::getPath("robot_plugin");
		wc = rw::loaders::WorkCellLoader::Factory::load(packagePath + "/WorkCell/Scene.wc.xml");
		device = wc->findDevice("UR5");
		state = wc->getDefaultState();
		robot = new caros::SerialDeviceSIProxy(nh, "caros_universalrobot");

		// Wait for first state message, to make sure robot is ready
		ros::topic::waitForMessage<caros_control_msgs::RobotState>("/caros_universalrobot/caros_serial_device_service_interface/robot_state", nh);
	    ros::spinOnce();
	}

	Q getQ()
	{
		// spinOnce processes one batch of messages, calling all the callbacks
	    ros::spinOnce();
	    Q q = robot->getQ();
		device->setQ(q, state);
	    return q;
	}

	bool setQ(Q q)
	{
		// Tell robot to move to joint config q
        float speed = 0.1;
		if (robot->moveServoQ(q, speed)) {
            // moveServoQ temintates before the robot is at the destination, so wait until it is
			Q qCurrent;
			do {
				ros::spinOnce();
				qCurrent = robot->getQ();
			} while((qCurrent - q).norm2() > 0.01);
			device->setQ(q, state);
			return true;
		} else
			return false;
	}
	void home()
	{
		rw::math::Q q(6, 0, -1.5708, 0, -1.5708, 0, 0);
		setQ(q);
	}
	rw::math::Transform3D<double> getPose() //get XYZRPY pose
	{
		rw::math::Transform3D<double> transform = device->baseTend(state);
		return transform;		
		//rw::math::Vector3D<double> XYZ = transform.P();
		//rw::math::RPY<double> RPY(transform.R());
		//std::cout << "XYZRPY pose of the robot is:\n" << XYZ << " " << RPY << std::endl;
	}
};

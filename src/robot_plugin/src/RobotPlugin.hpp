#ifndef SAMPLEPLUGIN_HPP
#define SAMPLEPLUGIN_HPP


#include <RobWorkStudioConfig.hpp> // For RWS_USE_QT5 definition
#include "/home/resps/rovi2/Rovi2/build/robot_plugin/ui_RobotPlugin.h"
#include </home/resps/rovi2/Rovi2/src/Project_lib/CellManager.hpp>
#include "qtros.h"
#include <ros/ros.h>
#include <cameranode/Point.h>
#include <rws/RobWorkStudioPlugin.hpp>
#include <rw/models.hpp>
#include <rw/math/Q.hpp>
#include <rw/models/Device.hpp>


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
class RobotPlugin: public rws::RobWorkStudioPlugin, private Ui::SamplePlugin
{
Q_OBJECT
Q_INTERFACES( rws::RobWorkStudioPlugin )
#if RWS_USE_QT5
Q_PLUGIN_METADATA(IID "dk.sdu.mip.Robwork.RobWorkStudioPlugin/0.1" FILE "plugin.json")
#endif
public:
        RobotPlugin();
        virtual ~RobotPlugin();

	virtual void open(rw::models::WorkCell* workcell);

	virtual void close();

	virtual void initialize();


private slots:
	void btnPressed();
	void timer();

	void stateChangedListener(const rw::kinematics::State& state);
        void newState(rw::math::Q pos);
	void HandleBallCallBack(double x,double y,double z);

signals:
	void quitNow();
        void moveHome();
	

private:
	void cloud_cb(cameranode::Point point);
	QTimer* _timer;
        QtROS *_qtRos;
	
	//rw::models::WorkCell::Ptr _wc;
	//rw::kinematics::State _state;
        //rw::models::Device::Ptr _device;

	CellManager CellMan;

	void updateScene();



	//Default functions for loading workcell and ball
	bool spawnBall();
	bool moveBall(double x, double y, double z);
	bool setBallSize(double radius);
	rw::kinematics::MovableFrame* mBallFrame;



};

#endif /*RINGONHOOKPLUGIN_HPP_*/

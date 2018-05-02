#include "RobotPlugin.hpp"
#include <math.h>
 
#include <rws/RobWorkStudio.hpp>
#include <qtimer.h>
#include <QPushButton>
#include <rw/loaders.hpp>
#include <cameranode/Point.h>
#include </home/resps/rovi2/Rovi2/src/Project_lib/CellManager.hpp>



#define deviceName "UR1"
#define workcellPath "/home/resps/rovi2/Rovi2/src/robot_plugin/WorkStation_2/WC2_Scene.wc.xml"

using namespace rw::common;
using namespace rw::kinematics;
using namespace rw::models;
using namespace rw::sensor;

using namespace rws;


RobotPlugin::RobotPlugin():
    RobWorkStudioPlugin("robot plugin", QIcon(":/pa_icon.png"))
{
        // Load ui file
	setupUi(this);


        // initialize ros to start without running roslaunch or rosrun
	char** argv = NULL;
        int argc = 0;
        ros::init(argc, argv,"robot_plugin");

        

        _timer = new QTimer(this);
        connect(_timer, SIGNAL(timeout()), this, SLOT(timer()));

	// now connect stuff from the ui component
	connect(btn_home    ,SIGNAL(pressed()), this, SLOT(btnPressed()) );
	connect(btn_start    ,SIGNAL(pressed()), this, SLOT(btnPressed()) );
        connect(btn_getQ    ,SIGNAL(pressed()), this, SLOT(btnPressed()) );
        connect(btn_setQ    ,SIGNAL(pressed()), this, SLOT(btnPressed()) );
        connect(btn_quit    ,SIGNAL(pressed()), this, SLOT(btnPressed()) );
        connect(_spin1  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        connect(_spin2  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        connect(_spin3  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        connect(_spin4  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        connect(_spin5  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        connect(_spin6  ,SIGNAL(valueChanged(int)), this, SLOT(btnPressed()) );
        

        _qtRos = new QtROS();

        // Connect signal for quit
        connect(this, SIGNAL(quitNow()), _qtRos, SLOT(quitNow()));


        // Connect signal for moving robot home
        connect(this, SIGNAL(moveHome()), _qtRos, SLOT(moveHome()));

        // Connect signal for getQ
        connect(this, SIGNAL(getQ()), _qtRos, SLOT(getQ()));
        
        // We need to register the type
        qRegisterMetaType<rw::math::Q>("rw::math::Q");
        connect(_qtRos, SIGNAL(newState(rw::math::Q)), this, SLOT(newState(rw::math::Q)));
               
        connect(_qtRos, SIGNAL(ballCallback(double,double,double)), this, SLOT(HandleBallCallBack(double,double,double)));


}

RobotPlugin::~RobotPlugin()
{
}


void RobotPlugin::newState(rw::math::Q pos)
{
        // Slot actived each time a new message is received from ros
        CellMan._device->setQ(pos, CellMan._state);
        getRobWorkStudio()->setState(CellMan._state);

}




void RobotPlugin::initialize()
{
        getRobWorkStudio()->stateChangedEvent().add(boost::bind(&RobotPlugin::stateChangedListener, this, _1), this);
        
        
        
        
        
        
        //CellMan = CellManager();
        //CellMan.spawnBall();
        //CellMan.setBallSize(0.1);
        // CellMan.moveBall(0,0,1.2);
        updateScene(); 
        // Auto load workcell
        // _wc = rw::loaders::WorkCellLoader::Factory::load(workcellPath);
        // if(_wc==NULL)
        //         std::cout<< "Der er ikke fundet en workcell"<< std::endl; 
        // _state = _wc->getDefaultState();
        // getRobWorkStudio()->setWorkCell(_wc);
        // spawnBall();
        // moveBall(0.0,0.0,1.2);
        // setBallSize(0.1);
        // moveBall(0.0,0.0,1.2);
}

void RobotPlugin::updateScene()
{
        rw::models::WorkCell::Ptr dummy = rw::common::ownedPtr(new rw::models::WorkCell("dummy")); // Create dummy wc for swap
        getRobWorkStudio()->setWorkCell(dummy); // Temporarily swap out wc from rws

        getRobWorkStudio()->setWorkCell(CellMan._wc); // Swap back wc into rws
        getRobWorkStudio()->setState(CellMan._state);

}

void RobotPlugin::open(WorkCell* workcell)
{
        // Default initialization
	CellMan._wc = workcell;
	CellMan._state = CellMan._wc->getDefaultState();
        CellMan._device = CellMan._wc->findDevice(deviceName);

}


void RobotPlugin::close()
{
     CellMan._wc = NULL;
}


void RobotPlugin::btnPressed()
{
        // Chech for btns
	QObject *obj = sender();
        if(obj==btn_start)
        {
                log().info() << "Start\n";
                _qtRos->start();
                //rw::math::Q q = _qtRos->getQ();
                //log().info() << q << "\n";
                //_spin1->setValue(q[0]); _spin2->setValue(q[1]); _spin3->setValue(q[2]); _spin4->setValue(q[3]); _spin5->setValue(q[4]); _spin6->setValue(q[5]);

                
        }
        else if(obj==btn_quit)
        {
                log().info() << "Quit\n";
                emit quitNow();
	}
        else if(obj == btn_home)
        {
                
                log().info() << "Moving home\n";
                emit moveHome();
        }
        else if(obj == btn_getQ)
        {
                std::cout<<"Creating qPath\n";
                std::vector<rw::math::Q> testPath;

                for(int i =0;i<2;i++)
                {
                        rw::math::Q q = CellMan.randomQ();
                        std::cout<<q<<"\n";
                        testPath.push_back(q);

                }
                

                
                        

                //CellMan.inCollision();
                log().info() << "Current Joint configurtation:\n";
                rw::math::Q q = _qtRos->getQ();
                log().info() << q << "\n";
                _spin1->setValue(q[0]); _spin2->setValue(q[1]); _spin3->setValue(q[2]); _spin4->setValue(q[3]); _spin5->setValue(q[4]); _spin6->setValue(q[5]);

        }
        else if(obj == btn_setQ)
        {
                log().info() << "Joint configuration set to: ";
                rw::math::Q q = rw::math::Q(6,_spin1->value(), _spin2->value(), _spin3->value(), _spin4->value(), _spin5->value(), _spin6->value());
                log().info() << q << "\n";
                _qtRos->setQ(q);
                //rw::math::Q q(6,_spin1->value(), _spin2->value(), _spin3->value(), _spin4->value(), _spin5->value(), _spin6->value());
        }
}

void RobotPlugin::timer()
{
        _timer->stop();
}

void RobotPlugin::stateChangedListener(const State& state)
{
	CellMan._state = state;
}

void RobotPlugin::HandleBallCallBack(double x,double y,double z)
{
        std::cout<<"xyz2 "<<x<<y<<z<<"\n";
        CellMan.moveBall(x,y,z); 
        //updateScene();

}



#if !RWS_USE_QT5
#include <QtCore/qplugin.h>
Q_EXPORT_PLUGIN(RobotPlugin);
#endif

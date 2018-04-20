#include "CellManager.hpp"
#include <math.h>
#include <rw/loaders.hpp>
#include <rwlibs/proximitystrategies/ProximityStrategyFactory.hpp>




#define deviceName "UR1"
#define workcellPath "/home/resps/rovi2/Rovi2/src/robot_plugin/WorkStation_2/WC2_Scene.wc.xml"

using namespace rw::common;
using namespace rw::kinematics;
using namespace rw::models;
using namespace rw::sensor;




CellManager::CellManager()   
{
        // Auto load workcell
        _wc = rw::loaders::WorkCellLoader::Factory::load(workcellPath);
        
        if(_wc==NULL)
                std::cout<< "Der er ikke fundet en workcell"<< std::endl; 


        _device = _wc->findDevice(deviceName);
        if(_device==NULL)
                std::cout<<"No device found!\n";

        _state = _wc->getDefaultState();
        spawnBall();

        detector = new rw::proximity::CollisionDetector(_wc, rwlibs::proximitystrategies::ProximityStrategyFactory::makeDefaultCollisionStrategy());
        
        moveBall(0.0,0.0,1.2);
        setBallSize(0.1);
        moveBall(0.0,0.0,1.2);

        qMin = _device->getBounds().first;
        qMax = _device->getBounds().second;
        rw::math::Math::seed();
        
               
}

CellManager::~CellManager()
{
}

bool CellManager::inCollision()
{
        rw::proximity::CollisionDetector::QueryResult data;       
        bool colFrom = detector->inCollision(_state,&data);
        std::cout<<"Collision " << colFrom <<"\n";
        if (colFrom) {
                //cerr << "Configuration in collision: " << q << endl;
                std::cout << "Colliding frames: " << std::endl;
                rw::kinematics::FramePairSet fps = data.collidingFrames;
                for (rw::kinematics::FramePairSet::iterator it = fps.begin(); it != fps.end(); it++) {
                        std::cout << (*it).first->getName() << " " << (*it).second->getName() << std::endl;
                }
                return true;
        }
        return false;

}


bool CellManager::spawnBall()
{
        //Const stuff
        std::string name = "Ball"; 
        std::string parent = "WORLD";
        double radius = 0.05;
        std::ostringstream val;
        val << "#Sphere " << radius;
        std::string modelVal = val.str();
        
        
        //Create Frame
        //rw::kinematics::MovableFrame* tmpPtr = new rw::kinematics::MovableFrame(name);
        
        //Move Able Frame stuff
         
        mBallFrame = new rw::kinematics::MovableFrame(name);
        rw::kinematics::Frame* frame = dynamic_cast<rw::kinematics::Frame*>(mBallFrame);
        if(_wc==NULL)
        {
                rw::common::Log::log().info() << "Workcell not found\n";        
        }
        

        rw::kinematics::Frame* parentFrame = _wc->findFrame(parent);
        
        if(parentFrame == NULL) {
                //rw::common::Log::log().info() << "parent frame not found\n";
                return false;
        }
        
        
        _wc->addFrame(frame, parentFrame);

        //_state = _wc->getDefaultState(); // Get state of wc


        
        //mframe->setTransform(transform, state); // Set transform

        _state = _wc->getStateStructure()->upgradeState(_state); // Upgrade state
        _wc->getStateStructure()->setDefaultState(_state); // Update state
        rw::common::Log::log().info() << "Added frame " << name << " to frame " << parent << std::endl;
        

        //Sphere stuff
        
        if (mBallFrame == NULL)
                return false;

        //creator.addSphere(name, mframe, _wc, 0.05, rw::math::Transform3D());

        //addSphere function:
        rw::models::RigidObject::Ptr object = new rw::models::RigidObject(mBallFrame); // Create new object object


        rw::math::Transform3D<double> transform; 

        //Create model 
        rw::graphics::Model3D::Ptr model3d = rw::loaders::Model3DFactory::getModel(modelVal, name); // Use factory to create a model object
        model3d->setTransform(transform); // Set transform of model
        model3d->setName(name); // Set name of model


        //Create goem
        rw::geometry::Geometry::Ptr geom = rw::loaders::GeometryFactory::load(modelVal, true); // Use factory to create a goemetry object
        geom->setName(name); // Set name of geometry
        geom->setTransform(transform); // Set transform of geometry
        geom->setFrame(mBallFrame);


        //Add stuff to model 
        object->addModel(model3d); // Create and set the model
        object->addGeometry(geom); // Create and set the geometry

        _wc->add(object); // Add object




        return true;
}

bool CellManager::moveBall(double x, double y, double z)
{
        rw::math::Transform3D<double> transform;
        transform.P()= rw::math::Vector3D<double> (x,y,z);
        //if(_state == NULL)
        //        rw::common::Log::log().info() << "State not found\n";
        //return false;
        mBallFrame->setTransform(transform, _state);

        //getRobWorkStudio()->setState(_state);
        return true;
}

bool CellManager::setBallSize(double radius)
{
        //Shit happens when reloading wc...
        //rw::common::Ptr<Object> obj = _wc->findObject("Ball");
        std::string name = "Ball";
        std::ostringstream val;
        val << "#Sphere " << radius;
        std::string modelVal = val.str();
        
        
        //rw::models::WorkCell::Ptr dummy = rw::common::ownedPtr(new rw::models::WorkCell("dummy")); // Create dummy wc for swap
        //getRobWorkStudio()->setWorkCell(dummy); // Temporarily swap out wc from rws

        
        _wc->remove(_wc->findObject(name).get());

        //getRobWorkStudio()->setWorkCell(_wc); // Swap back wc into rws




        rw::models::RigidObject::Ptr object = new rw::models::RigidObject(mBallFrame); // Create new object object


        rw::math::Transform3D<double> transform; 

        //Create model 
        rw::graphics::Model3D::Ptr model3d = rw::loaders::Model3DFactory::getModel(modelVal, name); // Use factory to create a model object
        model3d->setTransform(transform); // Set transform of model
        model3d->setName(name); // Set name of model


        //Create goem
        rw::geometry::Geometry::Ptr geom = rw::loaders::GeometryFactory::load(modelVal, true); // Use factory to create a goemetry object
        geom->setName(name); // Set name of geometry
        geom->setTransform(transform); // Set transform of geometry
        geom->setFrame(mBallFrame);


        //Add stuff to model 
        object->addModel(model3d); // Create and set the model
        object->addGeometry(geom); // Create and set the geometry

        _wc->add(object);

        return true;
}





rw::math::Q CellManager::randomQ()
{
    return rw::math::Math::ranQ(qMin,qMax);

}

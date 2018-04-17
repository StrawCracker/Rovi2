#ifndef CAROS_UNIVERSAL_ROBOTS_H
#define CAROS_UNIVERSAL_ROBOTS_H

#include <caros/ur_service_interface.h>
#include <caros/caros_node_service_interface.h>
#include <caros/serial_device_service_interface.h>

#include <rw/math_fwd.hpp>
#include <rw/common/Ptr.hpp>
#include <rw/kinematics/State.hpp>
#include <rwhw/universalrobots/URCallBackInterface.hpp>
#include <rwhw/universalrobots/UniversalRobotsRTLogging.hpp>

#include <queue>
#include <string>

#define SUPPORTED_Q_LENGTH_FOR_UR 6

namespace rw
{
namespace models
{
class WorkCell;
class Device;
}
}  // end namespaces

namespace rw
{
namespace invkin
{
class JacobianIKSolver;
}
}  // end namespaces

namespace caros
{
class UniversalRobots : public caros::CarosNodeServiceInterface,
                        public caros::SerialDeviceServiceInterface,
                        public URServiceInterface
{
 public:
  explicit UniversalRobots(const ros::NodeHandle& nodehandle);

  virtual ~UniversalRobots();

  enum URNODE_ERRORCODE
  {
    URNODE_MISSING_PARAMETER = 1,
    URNODE_URSERVICE_CONFIGURE_FAIL,
    URNODE_SERIALDEVICESERVICE_CONFIGURE_FAIL,
    URNODE_MISSING_WORKCELL,
    URNODE_NO_SUCH_DEVICE_IN_WORKCELL,
    URNODE_INVALID_CALLBACKPORT,
    URNODE_UNSUCCESSFUL_CONNECT_TO_URRT,
    URNODE_UNSUCCESSFUL_CONNECT_TO_UR,
    URNODE_UNSUPPORTED_Q_LENGTH,
    URNODE_INTERNAL_ERROR
  };

  /************************************************************************
   * URServiceInterface functions
   ************************************************************************/
  //! @copydoc URServiceInterface::servoT
  bool urServoT(const rw::math::Transform3D<>& target);
  //! @copydoc URServiceInterface::servoQ
  bool urServoQ(const rw::math::Q& target);
  //! @copydoc URServiceInterface::forceModeStart
  bool urForceModeStart(const rw::math::Transform3D<>& ref_t_offset, const rw::math::Q& selection,
                        const rw::math::Wrench6D<>& wrench_target, const rw::math::Q& limits);
  //! @copydoc URServiceInterface::forceModeUpdate
  bool urForceModeUpdate(const rw::math::Wrench6D<>& wrench_target);
  //! @copydoc URServiceInterface::forceModeStop
  bool urForceModeStop();
  //! @copydoc URServiceInterface::setPayload
  bool urSetPayload(const double& mass, const rw::math::Vector3D<>& com);
  //! @copydoc URServiceInterface::setIO
  bool urSetIO(const int& pin, const bool& value);

  /************************************************************************
   * SerialDeviceServiceInterface functions
   ************************************************************************/
  //! @copydoc caros::SerialDeviceServiceInterface::moveLin
  bool moveLin(const TransformAndSpeedAndBlendContainer_t& targets);
  //! @copydoc caros::SerialDeviceServiceInterface::movePtp
  bool movePtp(const QAndSpeedAndBlendContainer_t& targets);
  //! @copydoc caros::SerialDeviceServiceInterface::movePtpT
  bool movePtpT(const TransformAndSpeedAndBlendContainer_t& targets);
  //! @copydoc caros::SerialDeviceServiceInterface::moveVelQ
  bool moveVelQ(const rw::math::Q& q_vel);
  //! @copydoc caros::SerialDeviceServiceInterface::moveVelT
  bool moveVelT(const rw::math::VelocityScrew6D<>& t_vel);
  //! @copydoc caros::SerialDeviceServiceInterface::moveServoQ
  bool moveServoQ(const QAndSpeedContainer_t& targets);
  //! @copydoc caros::SerialDeviceServiceInterface::moveServoT
  bool moveServoT(const TransformAndSpeedContainer_t& targets);
  //! @copydoc caros::SerialDeviceServiceInterface::moveStop
  bool moveStop();

 protected:
  /************************************************************************
   * Hooks implemented from CarosNodeServiceInterface base class
   ************************************************************************/
  bool activateHook();
  bool recoverHook(const std::string& error_msg, const int64_t error_code);

  void runLoopHook();
  void errorLoopHook();
  void fatalErrorLoopHook();

 private:
  /* convenience functions */
  bool isInWorkingCondition();
  bool supportedQSize(const rw::math::Q& q);

 private:
  ros::NodeHandle nodehandle_;
  rw::common::Ptr<rw::models::WorkCell> workcell_;
  rw::common::Ptr<rw::models::Device> device_;
  rw::math::Q qcurrent_; /* Updated in runLoopHook() */

  rwhw::URCallBackInterface ur_;
  rwhw::UniversalRobotsRTLogging urrt_;

  rw::common::Ptr<rw::invkin::JacobianIKSolver> ik_solver_;
  rw::kinematics::State state_;
};
}  // namespace caros
#endif  // CAROS_UNIVERSAL_ROBOTS_H

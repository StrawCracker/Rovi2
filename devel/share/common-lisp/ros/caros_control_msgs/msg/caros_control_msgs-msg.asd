
(cl:in-package :asdf)

(defsystem "caros_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :caros_common_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GripperState" :depends-on ("_package_GripperState"))
    (:file "_package_GripperState" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))
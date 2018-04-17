
(cl:in-package :asdf)

(defsystem "caros_sensor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ButtonSensorState" :depends-on ("_package_ButtonSensorState"))
    (:file "_package_ButtonSensorState" :depends-on ("_package"))
    (:file "PoseSensorState" :depends-on ("_package_PoseSensorState"))
    (:file "_package_PoseSensorState" :depends-on ("_package"))
    (:file "TactileArrayData" :depends-on ("_package_TactileArrayData"))
    (:file "_package_TactileArrayData" :depends-on ("_package"))
    (:file "TactileArrayState" :depends-on ("_package_TactileArrayState"))
    (:file "_package_TactileArrayState" :depends-on ("_package"))
  ))
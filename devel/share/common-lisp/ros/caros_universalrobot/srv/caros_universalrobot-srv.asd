
(cl:in-package :asdf)

(defsystem "caros_universalrobot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :caros_common_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "UrServiceEmpty" :depends-on ("_package_UrServiceEmpty"))
    (:file "_package_UrServiceEmpty" :depends-on ("_package"))
    (:file "UrServiceForceModeStart" :depends-on ("_package_UrServiceForceModeStart"))
    (:file "_package_UrServiceForceModeStart" :depends-on ("_package"))
    (:file "UrServiceForceModeStop" :depends-on ("_package_UrServiceForceModeStop"))
    (:file "_package_UrServiceForceModeStop" :depends-on ("_package"))
    (:file "UrServiceForceModeUpdate" :depends-on ("_package_UrServiceForceModeUpdate"))
    (:file "_package_UrServiceForceModeUpdate" :depends-on ("_package"))
    (:file "UrServicePayload" :depends-on ("_package_UrServicePayload"))
    (:file "_package_UrServicePayload" :depends-on ("_package"))
    (:file "UrServiceServoQ" :depends-on ("_package_UrServiceServoQ"))
    (:file "_package_UrServiceServoQ" :depends-on ("_package"))
    (:file "UrServiceServoT" :depends-on ("_package_UrServiceServoT"))
    (:file "_package_UrServiceServoT" :depends-on ("_package"))
    (:file "UrServiceSetIO" :depends-on ("_package_UrServiceSetIO"))
    (:file "_package_UrServiceSetIO" :depends-on ("_package"))
  ))
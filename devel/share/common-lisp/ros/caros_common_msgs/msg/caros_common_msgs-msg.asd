
(cl:in-package :asdf)

(defsystem "caros_common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CarosNodeState" :depends-on ("_package_CarosNodeState"))
    (:file "_package_CarosNodeState" :depends-on ("_package"))
    (:file "Q" :depends-on ("_package_Q"))
    (:file "_package_Q" :depends-on ("_package"))
  ))
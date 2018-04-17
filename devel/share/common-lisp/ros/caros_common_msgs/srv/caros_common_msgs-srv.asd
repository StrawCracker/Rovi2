
(cl:in-package :asdf)

(defsystem "caros_common_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConfigBool" :depends-on ("_package_ConfigBool"))
    (:file "_package_ConfigBool" :depends-on ("_package"))
    (:file "ConfigInt" :depends-on ("_package_ConfigInt"))
    (:file "_package_ConfigInt" :depends-on ("_package"))
    (:file "EmptySrv" :depends-on ("_package_EmptySrv"))
    (:file "_package_EmptySrv" :depends-on ("_package"))
  ))
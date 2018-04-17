
(cl:in-package :asdf)

(defsystem "caros_common_robwork_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :caros_common_robwork_msgs-msg
)
  :components ((:file "_package")
    (:file "GetRwState" :depends-on ("_package_GetRwState"))
    (:file "_package_GetRwState" :depends-on ("_package"))
  ))
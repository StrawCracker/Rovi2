
(cl:in-package :asdf)

(defsystem "caros_common_robwork_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RwState" :depends-on ("_package_RwState"))
    (:file "_package_RwState" :depends-on ("_package"))
    (:file "RwStateData" :depends-on ("_package_RwStateData"))
    (:file "_package_RwStateData" :depends-on ("_package"))
  ))
;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceForceModeUpdate)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceForceModeUpdate (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATE"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATEREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATEREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATERESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODEUPDATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_universalrobot::UrServiceForceModeUpdateRequest
  :super ros::object
  :slots (_wrench ))

(defmethod caros_universalrobot::UrServiceForceModeUpdateRequest
  (:init
   (&key
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    )
   (send-super :init)
   (setq _wrench __wrench)
   self)
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;;
   self)
  )

(defclass caros_universalrobot::UrServiceForceModeUpdateResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceForceModeUpdateResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass caros_universalrobot::UrServiceForceModeUpdate
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceForceModeUpdate :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_universalrobot::UrServiceForceModeUpdate :datatype-) "caros_universalrobot/UrServiceForceModeUpdate")
(setf (get caros_universalrobot::UrServiceForceModeUpdate :request) caros_universalrobot::UrServiceForceModeUpdateRequest)
(setf (get caros_universalrobot::UrServiceForceModeUpdate :response) caros_universalrobot::UrServiceForceModeUpdateResponse)

(defmethod caros_universalrobot::UrServiceForceModeUpdateRequest
  (:response () (instance caros_universalrobot::UrServiceForceModeUpdateResponse :init)))

(setf (get caros_universalrobot::UrServiceForceModeUpdateRequest :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_universalrobot::UrServiceForceModeUpdateRequest :datatype-) "caros_universalrobot/UrServiceForceModeUpdateRequest")
(setf (get caros_universalrobot::UrServiceForceModeUpdateRequest :definition-)
      "


geometry_msgs/Wrench wrench


================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

bool success

")

(setf (get caros_universalrobot::UrServiceForceModeUpdateResponse :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_universalrobot::UrServiceForceModeUpdateResponse :datatype-) "caros_universalrobot/UrServiceForceModeUpdateResponse")
(setf (get caros_universalrobot::UrServiceForceModeUpdateResponse :definition-)
      "


geometry_msgs/Wrench wrench


================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

bool success

")



(provide :caros_universalrobot/UrServiceForceModeUpdate "30313040926e96225efb955b34d4bf7f")



;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceServoT)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceServoT (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOT")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOT"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOTREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOTREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOTRESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_universalrobot::UrServiceServoTRequest
  :super ros::object
  :slots (_target ))

(defmethod caros_universalrobot::UrServiceServoTRequest
  (:init
   (&key
    ((:target __target) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _target __target)
   self)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _target
    (send _target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _target
       (send _target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;;
   self)
  )

(defclass caros_universalrobot::UrServiceServoTResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceServoTResponse
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

(defclass caros_universalrobot::UrServiceServoT
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceServoT :md5sum-) "7909a8d932441c3aea2cba0b34f38609")
(setf (get caros_universalrobot::UrServiceServoT :datatype-) "caros_universalrobot/UrServiceServoT")
(setf (get caros_universalrobot::UrServiceServoT :request) caros_universalrobot::UrServiceServoTRequest)
(setf (get caros_universalrobot::UrServiceServoT :response) caros_universalrobot::UrServiceServoTResponse)

(defmethod caros_universalrobot::UrServiceServoTRequest
  (:response () (instance caros_universalrobot::UrServiceServoTResponse :init)))

(setf (get caros_universalrobot::UrServiceServoTRequest :md5sum-) "7909a8d932441c3aea2cba0b34f38609")
(setf (get caros_universalrobot::UrServiceServoTRequest :datatype-) "caros_universalrobot/UrServiceServoTRequest")
(setf (get caros_universalrobot::UrServiceServoTRequest :definition-)
      "
geometry_msgs/Transform target


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool success

")

(setf (get caros_universalrobot::UrServiceServoTResponse :md5sum-) "7909a8d932441c3aea2cba0b34f38609")
(setf (get caros_universalrobot::UrServiceServoTResponse :datatype-) "caros_universalrobot/UrServiceServoTResponse")
(setf (get caros_universalrobot::UrServiceServoTResponse :definition-)
      "
geometry_msgs/Transform target


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool success

")



(provide :caros_universalrobot/UrServiceServoT "7909a8d932441c3aea2cba0b34f38609")



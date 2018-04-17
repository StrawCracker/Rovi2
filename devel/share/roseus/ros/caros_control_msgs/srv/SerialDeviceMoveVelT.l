;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceMoveVelT)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceMoveVelT (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELT")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELT"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELTREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELTREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELTRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_control_msgs::SerialDeviceMoveVelTRequest
  :super ros::object
  :slots (_vel ))

(defmethod caros_control_msgs::SerialDeviceMoveVelTRequest
  (:init
   (&key
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _vel __vel)
   self)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceMoveVelTResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceMoveVelTResponse
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

(defclass caros_control_msgs::SerialDeviceMoveVelT
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceMoveVelT :md5sum-) "82ef1143126410b5082ced32f5c883a9")
(setf (get caros_control_msgs::SerialDeviceMoveVelT :datatype-) "caros_control_msgs/SerialDeviceMoveVelT")
(setf (get caros_control_msgs::SerialDeviceMoveVelT :request) caros_control_msgs::SerialDeviceMoveVelTRequest)
(setf (get caros_control_msgs::SerialDeviceMoveVelT :response) caros_control_msgs::SerialDeviceMoveVelTResponse)

(defmethod caros_control_msgs::SerialDeviceMoveVelTRequest
  (:response () (instance caros_control_msgs::SerialDeviceMoveVelTResponse :init)))

(setf (get caros_control_msgs::SerialDeviceMoveVelTRequest :md5sum-) "82ef1143126410b5082ced32f5c883a9")
(setf (get caros_control_msgs::SerialDeviceMoveVelTRequest :datatype-) "caros_control_msgs/SerialDeviceMoveVelTRequest")
(setf (get caros_control_msgs::SerialDeviceMoveVelTRequest :definition-)
      "


geometry_msgs/Twist vel


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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

(setf (get caros_control_msgs::SerialDeviceMoveVelTResponse :md5sum-) "82ef1143126410b5082ced32f5c883a9")
(setf (get caros_control_msgs::SerialDeviceMoveVelTResponse :datatype-) "caros_control_msgs/SerialDeviceMoveVelTResponse")
(setf (get caros_control_msgs::SerialDeviceMoveVelTResponse :definition-)
      "


geometry_msgs/Twist vel


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :caros_control_msgs/SerialDeviceMoveVelT "82ef1143126410b5082ced32f5c883a9")



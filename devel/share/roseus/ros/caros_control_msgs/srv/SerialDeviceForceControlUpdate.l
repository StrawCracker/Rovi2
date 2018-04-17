;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceForceControlUpdate)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceForceControlUpdate (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATE"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATEREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATEREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATERESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLUPDATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_control_msgs::SerialDeviceForceControlUpdateRequest
  :super ros::object
  :slots (_wrench ))

(defmethod caros_control_msgs::SerialDeviceForceControlUpdateRequest
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

(defclass caros_control_msgs::SerialDeviceForceControlUpdateResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceForceControlUpdateResponse
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

(defclass caros_control_msgs::SerialDeviceForceControlUpdate
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceForceControlUpdate :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdate :datatype-) "caros_control_msgs/SerialDeviceForceControlUpdate")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdate :request) caros_control_msgs::SerialDeviceForceControlUpdateRequest)
(setf (get caros_control_msgs::SerialDeviceForceControlUpdate :response) caros_control_msgs::SerialDeviceForceControlUpdateResponse)

(defmethod caros_control_msgs::SerialDeviceForceControlUpdateRequest
  (:response () (instance caros_control_msgs::SerialDeviceForceControlUpdateResponse :init)))

(setf (get caros_control_msgs::SerialDeviceForceControlUpdateRequest :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdateRequest :datatype-) "caros_control_msgs/SerialDeviceForceControlUpdateRequest")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdateRequest :definition-)
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

(setf (get caros_control_msgs::SerialDeviceForceControlUpdateResponse :md5sum-) "30313040926e96225efb955b34d4bf7f")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdateResponse :datatype-) "caros_control_msgs/SerialDeviceForceControlUpdateResponse")
(setf (get caros_control_msgs::SerialDeviceForceControlUpdateResponse :definition-)
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



(provide :caros_control_msgs/SerialDeviceForceControlUpdate "30313040926e96225efb955b34d4bf7f")



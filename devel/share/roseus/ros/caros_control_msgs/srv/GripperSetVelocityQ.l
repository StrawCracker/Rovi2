;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::GripperSetVelocityQ)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'GripperSetVelocityQ (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQ")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQ"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQREQUEST")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETVELOCITYQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::GripperSetVelocityQRequest
  :super ros::object
  :slots (_velocity ))

(defmethod caros_control_msgs::GripperSetVelocityQRequest
  (:init
   (&key
    ((:velocity __velocity) (instance caros_common_msgs::Q :init))
    )
   (send-super :init)
   (setq _velocity __velocity)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; caros_common_msgs/Q _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(defclass caros_control_msgs::GripperSetVelocityQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::GripperSetVelocityQResponse
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

(defclass caros_control_msgs::GripperSetVelocityQ
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::GripperSetVelocityQ :md5sum-) "6364873f803d54771b419bcf1075611d")
(setf (get caros_control_msgs::GripperSetVelocityQ :datatype-) "caros_control_msgs/GripperSetVelocityQ")
(setf (get caros_control_msgs::GripperSetVelocityQ :request) caros_control_msgs::GripperSetVelocityQRequest)
(setf (get caros_control_msgs::GripperSetVelocityQ :response) caros_control_msgs::GripperSetVelocityQResponse)

(defmethod caros_control_msgs::GripperSetVelocityQRequest
  (:response () (instance caros_control_msgs::GripperSetVelocityQResponse :init)))

(setf (get caros_control_msgs::GripperSetVelocityQRequest :md5sum-) "6364873f803d54771b419bcf1075611d")
(setf (get caros_control_msgs::GripperSetVelocityQRequest :datatype-) "caros_control_msgs/GripperSetVelocityQRequest")
(setf (get caros_control_msgs::GripperSetVelocityQRequest :definition-)
      "
caros_common_msgs/Q velocity

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::GripperSetVelocityQResponse :md5sum-) "6364873f803d54771b419bcf1075611d")
(setf (get caros_control_msgs::GripperSetVelocityQResponse :datatype-) "caros_control_msgs/GripperSetVelocityQResponse")
(setf (get caros_control_msgs::GripperSetVelocityQResponse :definition-)
      "
caros_common_msgs/Q velocity

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/GripperSetVelocityQ "6364873f803d54771b419bcf1075611d")



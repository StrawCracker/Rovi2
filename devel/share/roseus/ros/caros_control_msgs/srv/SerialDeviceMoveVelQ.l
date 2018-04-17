;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceMoveVelQ)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceMoveVelQ (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQ")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQ"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEVELQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::SerialDeviceMoveVelQRequest
  :super ros::object
  :slots (_vel ))

(defmethod caros_control_msgs::SerialDeviceMoveVelQRequest
  (:init
   (&key
    ((:vel __vel) (instance caros_common_msgs::Q :init))
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
    ;; caros_common_msgs/Q _vel
    (send _vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q _vel
       (send _vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceMoveVelQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceMoveVelQResponse
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

(defclass caros_control_msgs::SerialDeviceMoveVelQ
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceMoveVelQ :md5sum-) "e405cc67ad2f49de8c759f388d4bac88")
(setf (get caros_control_msgs::SerialDeviceMoveVelQ :datatype-) "caros_control_msgs/SerialDeviceMoveVelQ")
(setf (get caros_control_msgs::SerialDeviceMoveVelQ :request) caros_control_msgs::SerialDeviceMoveVelQRequest)
(setf (get caros_control_msgs::SerialDeviceMoveVelQ :response) caros_control_msgs::SerialDeviceMoveVelQResponse)

(defmethod caros_control_msgs::SerialDeviceMoveVelQRequest
  (:response () (instance caros_control_msgs::SerialDeviceMoveVelQResponse :init)))

(setf (get caros_control_msgs::SerialDeviceMoveVelQRequest :md5sum-) "e405cc67ad2f49de8c759f388d4bac88")
(setf (get caros_control_msgs::SerialDeviceMoveVelQRequest :datatype-) "caros_control_msgs/SerialDeviceMoveVelQRequest")
(setf (get caros_control_msgs::SerialDeviceMoveVelQRequest :definition-)
      "
caros_common_msgs/Q vel


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::SerialDeviceMoveVelQResponse :md5sum-) "e405cc67ad2f49de8c759f388d4bac88")
(setf (get caros_control_msgs::SerialDeviceMoveVelQResponse :datatype-) "caros_control_msgs/SerialDeviceMoveVelQResponse")
(setf (get caros_control_msgs::SerialDeviceMoveVelQResponse :definition-)
      "
caros_common_msgs/Q vel


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/SerialDeviceMoveVelQ "e405cc67ad2f49de8c759f388d4bac88")



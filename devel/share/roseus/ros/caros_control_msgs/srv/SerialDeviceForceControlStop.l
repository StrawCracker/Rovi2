;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceForceControlStop)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceForceControlStop (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOP")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOP"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOPREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOPREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOPRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTOPRESPONSE"))

(in-package "ROS")





(defclass caros_control_msgs::SerialDeviceForceControlStopRequest
  :super ros::object
  :slots ())

(defmethod caros_control_msgs::SerialDeviceForceControlStopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceForceControlStopResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceForceControlStopResponse
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

(defclass caros_control_msgs::SerialDeviceForceControlStop
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceForceControlStop :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::SerialDeviceForceControlStop :datatype-) "caros_control_msgs/SerialDeviceForceControlStop")
(setf (get caros_control_msgs::SerialDeviceForceControlStop :request) caros_control_msgs::SerialDeviceForceControlStopRequest)
(setf (get caros_control_msgs::SerialDeviceForceControlStop :response) caros_control_msgs::SerialDeviceForceControlStopResponse)

(defmethod caros_control_msgs::SerialDeviceForceControlStopRequest
  (:response () (instance caros_control_msgs::SerialDeviceForceControlStopResponse :init)))

(setf (get caros_control_msgs::SerialDeviceForceControlStopRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::SerialDeviceForceControlStopRequest :datatype-) "caros_control_msgs/SerialDeviceForceControlStopRequest")
(setf (get caros_control_msgs::SerialDeviceForceControlStopRequest :definition-)
      "

---

bool success

")

(setf (get caros_control_msgs::SerialDeviceForceControlStopResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::SerialDeviceForceControlStopResponse :datatype-) "caros_control_msgs/SerialDeviceForceControlStopResponse")
(setf (get caros_control_msgs::SerialDeviceForceControlStopResponse :definition-)
      "

---

bool success

")



(provide :caros_control_msgs/SerialDeviceForceControlStop "358e233cde0c8a8bcfea4ce193f8fc15")



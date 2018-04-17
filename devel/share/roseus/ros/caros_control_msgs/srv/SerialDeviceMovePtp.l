;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceMovePtp)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceMovePtp (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTP")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTP"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTPREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTPREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTPRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVEPTPRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::SerialDeviceMovePtpRequest
  :super ros::object
  :slots (_targets _speeds _blends ))

(defmethod caros_control_msgs::SerialDeviceMovePtpRequest
  (:init
   (&key
    ((:targets __targets) (let (r) (dotimes (i 0) (push (instance caros_common_msgs::Q :init) r)) r))
    ((:speeds __speeds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:blends __blends) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _targets __targets)
   (setq _speeds __speeds)
   (setq _blends __blends)
   self)
  (:targets
   (&rest __targets)
   (if (keywordp (car __targets))
       (send* _targets __targets)
     (progn
       (if __targets (setq _targets (car __targets)))
       _targets)))
  (:speeds
   (&optional __speeds)
   (if __speeds (setq _speeds __speeds)) _speeds)
  (:blends
   (&optional __blends)
   (if __blends (setq _blends __blends)) _blends)
  (:serialization-length
   ()
   (+
    ;; caros_common_msgs/Q[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ;; float32[] _speeds
    (* 4    (length _speeds)) 4
    ;; float32[] _blends
    (* 4    (length _blends)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (send elem :serialize s)
       )
     ;; float32[] _speeds
     (write-long (length _speeds) s)
     (dotimes (i (length _speeds))
       (sys::poke (elt _speeds i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _blends
     (write-long (length _blends) s)
     (dotimes (i (length _blends))
       (sys::poke (elt _blends i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (let (r) (dotimes (i n) (push (instance caros_common_msgs::Q :init) r)) r))
     (dolist (elem- _targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _speeds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speeds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speeds i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _blends
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blends (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _blends i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceMovePtpResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceMovePtpResponse
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

(defclass caros_control_msgs::SerialDeviceMovePtp
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceMovePtp :md5sum-) "2fbc9fa7b435c3ead71fa46c56458df1")
(setf (get caros_control_msgs::SerialDeviceMovePtp :datatype-) "caros_control_msgs/SerialDeviceMovePtp")
(setf (get caros_control_msgs::SerialDeviceMovePtp :request) caros_control_msgs::SerialDeviceMovePtpRequest)
(setf (get caros_control_msgs::SerialDeviceMovePtp :response) caros_control_msgs::SerialDeviceMovePtpResponse)

(defmethod caros_control_msgs::SerialDeviceMovePtpRequest
  (:response () (instance caros_control_msgs::SerialDeviceMovePtpResponse :init)))

(setf (get caros_control_msgs::SerialDeviceMovePtpRequest :md5sum-) "2fbc9fa7b435c3ead71fa46c56458df1")
(setf (get caros_control_msgs::SerialDeviceMovePtpRequest :datatype-) "caros_control_msgs/SerialDeviceMovePtpRequest")
(setf (get caros_control_msgs::SerialDeviceMovePtpRequest :definition-)
      "
caros_common_msgs/Q[] targets


float32[] speeds


float32[] blends


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::SerialDeviceMovePtpResponse :md5sum-) "2fbc9fa7b435c3ead71fa46c56458df1")
(setf (get caros_control_msgs::SerialDeviceMovePtpResponse :datatype-) "caros_control_msgs/SerialDeviceMovePtpResponse")
(setf (get caros_control_msgs::SerialDeviceMovePtpResponse :definition-)
      "
caros_common_msgs/Q[] targets


float32[] speeds


float32[] blends


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/SerialDeviceMovePtp "2fbc9fa7b435c3ead71fa46c56458df1")



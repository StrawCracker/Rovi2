;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceMoveServoQ)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceMoveServoQ (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQ")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQ"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVESERVOQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::SerialDeviceMoveServoQRequest
  :super ros::object
  :slots (_targets _speeds ))

(defmethod caros_control_msgs::SerialDeviceMoveServoQRequest
  (:init
   (&key
    ((:targets __targets) (let (r) (dotimes (i 0) (push (instance caros_common_msgs::Q :init) r)) r))
    ((:speeds __speeds) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _targets __targets)
   (setq _speeds __speeds)
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
  (:serialization-length
   ()
   (+
    ;; caros_common_msgs/Q[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ;; float32[] _speeds
    (* 4    (length _speeds)) 4
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
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceMoveServoQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceMoveServoQResponse
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

(defclass caros_control_msgs::SerialDeviceMoveServoQ
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceMoveServoQ :md5sum-) "8289fdc0949acdbc17fb0989cb66f411")
(setf (get caros_control_msgs::SerialDeviceMoveServoQ :datatype-) "caros_control_msgs/SerialDeviceMoveServoQ")
(setf (get caros_control_msgs::SerialDeviceMoveServoQ :request) caros_control_msgs::SerialDeviceMoveServoQRequest)
(setf (get caros_control_msgs::SerialDeviceMoveServoQ :response) caros_control_msgs::SerialDeviceMoveServoQResponse)

(defmethod caros_control_msgs::SerialDeviceMoveServoQRequest
  (:response () (instance caros_control_msgs::SerialDeviceMoveServoQResponse :init)))

(setf (get caros_control_msgs::SerialDeviceMoveServoQRequest :md5sum-) "8289fdc0949acdbc17fb0989cb66f411")
(setf (get caros_control_msgs::SerialDeviceMoveServoQRequest :datatype-) "caros_control_msgs/SerialDeviceMoveServoQRequest")
(setf (get caros_control_msgs::SerialDeviceMoveServoQRequest :definition-)
      "
caros_common_msgs/Q[] targets


float32[] speeds


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::SerialDeviceMoveServoQResponse :md5sum-) "8289fdc0949acdbc17fb0989cb66f411")
(setf (get caros_control_msgs::SerialDeviceMoveServoQResponse :datatype-) "caros_control_msgs/SerialDeviceMoveServoQResponse")
(setf (get caros_control_msgs::SerialDeviceMoveServoQResponse :definition-)
      "
caros_common_msgs/Q[] targets


float32[] speeds


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/SerialDeviceMoveServoQ "8289fdc0949acdbc17fb0989cb66f411")



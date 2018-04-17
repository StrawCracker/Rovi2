;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::GripperGripQ)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'GripperGripQ (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQ")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQ"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQREQUEST")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERGRIPQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::GripperGripQRequest
  :super ros::object
  :slots (_q ))

(defmethod caros_control_msgs::GripperGripQRequest
  (:init
   (&key
    ((:q __q) (instance caros_common_msgs::Q :init))
    )
   (send-super :init)
   (setq _q __q)
   self)
  (:q
   (&rest __q)
   (if (keywordp (car __q))
       (send* _q __q)
     (progn
       (if __q (setq _q (car __q)))
       _q)))
  (:serialization-length
   ()
   (+
    ;; caros_common_msgs/Q _q
    (send _q :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q _q
       (send _q :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q _q
     (send _q :deserialize buf ptr-) (incf ptr- (send _q :serialization-length))
   ;;
   self)
  )

(defclass caros_control_msgs::GripperGripQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::GripperGripQResponse
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

(defclass caros_control_msgs::GripperGripQ
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::GripperGripQ :md5sum-) "d23b32153f93e9b4d774b55a7d161889")
(setf (get caros_control_msgs::GripperGripQ :datatype-) "caros_control_msgs/GripperGripQ")
(setf (get caros_control_msgs::GripperGripQ :request) caros_control_msgs::GripperGripQRequest)
(setf (get caros_control_msgs::GripperGripQ :response) caros_control_msgs::GripperGripQResponse)

(defmethod caros_control_msgs::GripperGripQRequest
  (:response () (instance caros_control_msgs::GripperGripQResponse :init)))

(setf (get caros_control_msgs::GripperGripQRequest :md5sum-) "d23b32153f93e9b4d774b55a7d161889")
(setf (get caros_control_msgs::GripperGripQRequest :datatype-) "caros_control_msgs/GripperGripQRequest")
(setf (get caros_control_msgs::GripperGripQRequest :definition-)
      "

caros_common_msgs/Q q

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::GripperGripQResponse :md5sum-) "d23b32153f93e9b4d774b55a7d161889")
(setf (get caros_control_msgs::GripperGripQResponse :datatype-) "caros_control_msgs/GripperGripQResponse")
(setf (get caros_control_msgs::GripperGripQResponse :definition-)
      "

caros_common_msgs/Q q

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/GripperGripQ "d23b32153f93e9b4d774b55a7d161889")



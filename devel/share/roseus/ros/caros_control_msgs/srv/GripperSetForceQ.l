;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::GripperSetForceQ)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'GripperSetForceQ (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQ")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQ"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQREQUEST")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSETFORCEQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_control_msgs::GripperSetForceQRequest
  :super ros::object
  :slots (_force ))

(defmethod caros_control_msgs::GripperSetForceQRequest
  (:init
   (&key
    ((:force __force) (instance caros_common_msgs::Q :init))
    )
   (send-super :init)
   (setq _force __force)
   self)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:serialization-length
   ()
   (+
    ;; caros_common_msgs/Q _force
    (send _force :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q _force
       (send _force :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;;
   self)
  )

(defclass caros_control_msgs::GripperSetForceQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::GripperSetForceQResponse
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

(defclass caros_control_msgs::GripperSetForceQ
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::GripperSetForceQ :md5sum-) "feae1a2d3a448335d59915dd351d018c")
(setf (get caros_control_msgs::GripperSetForceQ :datatype-) "caros_control_msgs/GripperSetForceQ")
(setf (get caros_control_msgs::GripperSetForceQ :request) caros_control_msgs::GripperSetForceQRequest)
(setf (get caros_control_msgs::GripperSetForceQ :response) caros_control_msgs::GripperSetForceQResponse)

(defmethod caros_control_msgs::GripperSetForceQRequest
  (:response () (instance caros_control_msgs::GripperSetForceQResponse :init)))

(setf (get caros_control_msgs::GripperSetForceQRequest :md5sum-) "feae1a2d3a448335d59915dd351d018c")
(setf (get caros_control_msgs::GripperSetForceQRequest :datatype-) "caros_control_msgs/GripperSetForceQRequest")
(setf (get caros_control_msgs::GripperSetForceQRequest :definition-)
      "
caros_common_msgs/Q force

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_control_msgs::GripperSetForceQResponse :md5sum-) "feae1a2d3a448335d59915dd351d018c")
(setf (get caros_control_msgs::GripperSetForceQResponse :datatype-) "caros_control_msgs/GripperSetForceQResponse")
(setf (get caros_control_msgs::GripperSetForceQResponse :definition-)
      "
caros_common_msgs/Q force

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_control_msgs/GripperSetForceQ "feae1a2d3a448335d59915dd351d018c")



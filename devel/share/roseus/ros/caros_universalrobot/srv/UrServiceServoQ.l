;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceServoQ)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceServoQ (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQ")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQ"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQRESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESERVOQRESPONSE"))

(in-package "ROS")

(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))




(defclass caros_universalrobot::UrServiceServoQRequest
  :super ros::object
  :slots (_target ))

(defmethod caros_universalrobot::UrServiceServoQRequest
  (:init
   (&key
    ((:target __target) (instance caros_common_msgs::Q :init))
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
    ;; caros_common_msgs/Q _target
    (send _target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_msgs/Q _target
       (send _target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_msgs/Q _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;;
   self)
  )

(defclass caros_universalrobot::UrServiceServoQResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceServoQResponse
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

(defclass caros_universalrobot::UrServiceServoQ
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceServoQ :md5sum-) "a0ad63434e4812ee019f31d434b9f910")
(setf (get caros_universalrobot::UrServiceServoQ :datatype-) "caros_universalrobot/UrServiceServoQ")
(setf (get caros_universalrobot::UrServiceServoQ :request) caros_universalrobot::UrServiceServoQRequest)
(setf (get caros_universalrobot::UrServiceServoQ :response) caros_universalrobot::UrServiceServoQResponse)

(defmethod caros_universalrobot::UrServiceServoQRequest
  (:response () (instance caros_universalrobot::UrServiceServoQResponse :init)))

(setf (get caros_universalrobot::UrServiceServoQRequest :md5sum-) "a0ad63434e4812ee019f31d434b9f910")
(setf (get caros_universalrobot::UrServiceServoQRequest :datatype-) "caros_universalrobot/UrServiceServoQRequest")
(setf (get caros_universalrobot::UrServiceServoQRequest :definition-)
      "
caros_common_msgs/Q target


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")

(setf (get caros_universalrobot::UrServiceServoQResponse :md5sum-) "a0ad63434e4812ee019f31d434b9f910")
(setf (get caros_universalrobot::UrServiceServoQResponse :datatype-) "caros_universalrobot/UrServiceServoQResponse")
(setf (get caros_universalrobot::UrServiceServoQResponse :definition-)
      "
caros_common_msgs/Q target


================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
---

bool success

")



(provide :caros_universalrobot/UrServiceServoQ "a0ad63434e4812ee019f31d434b9f910")



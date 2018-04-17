;; Auto-generated. Do not edit!


(when (boundp 'caros_common_msgs::EmptySrv)
  (if (not (find-package "CAROS_COMMON_MSGS"))
    (make-package "CAROS_COMMON_MSGS"))
  (shadow 'EmptySrv (find-package "CAROS_COMMON_MSGS")))
(unless (find-package "CAROS_COMMON_MSGS::EMPTYSRV")
  (make-package "CAROS_COMMON_MSGS::EMPTYSRV"))
(unless (find-package "CAROS_COMMON_MSGS::EMPTYSRVREQUEST")
  (make-package "CAROS_COMMON_MSGS::EMPTYSRVREQUEST"))
(unless (find-package "CAROS_COMMON_MSGS::EMPTYSRVRESPONSE")
  (make-package "CAROS_COMMON_MSGS::EMPTYSRVRESPONSE"))

(in-package "ROS")





(defclass caros_common_msgs::EmptySrvRequest
  :super ros::object
  :slots ())

(defmethod caros_common_msgs::EmptySrvRequest
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

(defclass caros_common_msgs::EmptySrvResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_common_msgs::EmptySrvResponse
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

(defclass caros_common_msgs::EmptySrv
  :super ros::object
  :slots ())

(setf (get caros_common_msgs::EmptySrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_common_msgs::EmptySrv :datatype-) "caros_common_msgs/EmptySrv")
(setf (get caros_common_msgs::EmptySrv :request) caros_common_msgs::EmptySrvRequest)
(setf (get caros_common_msgs::EmptySrv :response) caros_common_msgs::EmptySrvResponse)

(defmethod caros_common_msgs::EmptySrvRequest
  (:response () (instance caros_common_msgs::EmptySrvResponse :init)))

(setf (get caros_common_msgs::EmptySrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_common_msgs::EmptySrvRequest :datatype-) "caros_common_msgs/EmptySrvRequest")
(setf (get caros_common_msgs::EmptySrvRequest :definition-)
      "
---
bool success

")

(setf (get caros_common_msgs::EmptySrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_common_msgs::EmptySrvResponse :datatype-) "caros_common_msgs/EmptySrvResponse")
(setf (get caros_common_msgs::EmptySrvResponse :definition-)
      "
---
bool success

")



(provide :caros_common_msgs/EmptySrv "358e233cde0c8a8bcfea4ce193f8fc15")



;; Auto-generated. Do not edit!


(when (boundp 'caros_common_msgs::ConfigBool)
  (if (not (find-package "CAROS_COMMON_MSGS"))
    (make-package "CAROS_COMMON_MSGS"))
  (shadow 'ConfigBool (find-package "CAROS_COMMON_MSGS")))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGBOOL")
  (make-package "CAROS_COMMON_MSGS::CONFIGBOOL"))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGBOOLREQUEST")
  (make-package "CAROS_COMMON_MSGS::CONFIGBOOLREQUEST"))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGBOOLRESPONSE")
  (make-package "CAROS_COMMON_MSGS::CONFIGBOOLRESPONSE"))

(in-package "ROS")





(defclass caros_common_msgs::ConfigBoolRequest
  :super ros::object
  :slots (_value ))

(defmethod caros_common_msgs::ConfigBoolRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass caros_common_msgs::ConfigBoolResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_common_msgs::ConfigBoolResponse
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

(defclass caros_common_msgs::ConfigBool
  :super ros::object
  :slots ())

(setf (get caros_common_msgs::ConfigBool :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get caros_common_msgs::ConfigBool :datatype-) "caros_common_msgs/ConfigBool")
(setf (get caros_common_msgs::ConfigBool :request) caros_common_msgs::ConfigBoolRequest)
(setf (get caros_common_msgs::ConfigBool :response) caros_common_msgs::ConfigBoolResponse)

(defmethod caros_common_msgs::ConfigBoolRequest
  (:response () (instance caros_common_msgs::ConfigBoolResponse :init)))

(setf (get caros_common_msgs::ConfigBoolRequest :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get caros_common_msgs::ConfigBoolRequest :datatype-) "caros_common_msgs/ConfigBoolRequest")
(setf (get caros_common_msgs::ConfigBoolRequest :definition-)
      "
bool value
---
bool success

")

(setf (get caros_common_msgs::ConfigBoolResponse :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get caros_common_msgs::ConfigBoolResponse :datatype-) "caros_common_msgs/ConfigBoolResponse")
(setf (get caros_common_msgs::ConfigBoolResponse :definition-)
      "
bool value
---
bool success

")



(provide :caros_common_msgs/ConfigBool "24a0f9fd764459b7e35d04a0dd83dd11")



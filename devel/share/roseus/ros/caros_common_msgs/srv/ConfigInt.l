;; Auto-generated. Do not edit!


(when (boundp 'caros_common_msgs::ConfigInt)
  (if (not (find-package "CAROS_COMMON_MSGS"))
    (make-package "CAROS_COMMON_MSGS"))
  (shadow 'ConfigInt (find-package "CAROS_COMMON_MSGS")))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGINT")
  (make-package "CAROS_COMMON_MSGS::CONFIGINT"))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGINTREQUEST")
  (make-package "CAROS_COMMON_MSGS::CONFIGINTREQUEST"))
(unless (find-package "CAROS_COMMON_MSGS::CONFIGINTRESPONSE")
  (make-package "CAROS_COMMON_MSGS::CONFIGINTRESPONSE"))

(in-package "ROS")





(defclass caros_common_msgs::ConfigIntRequest
  :super ros::object
  :slots (_value ))

(defmethod caros_common_msgs::ConfigIntRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass caros_common_msgs::ConfigIntResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_common_msgs::ConfigIntResponse
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

(defclass caros_common_msgs::ConfigInt
  :super ros::object
  :slots ())

(setf (get caros_common_msgs::ConfigInt :md5sum-) "90cf831f17d9eb3982e6a04cd41f654b")
(setf (get caros_common_msgs::ConfigInt :datatype-) "caros_common_msgs/ConfigInt")
(setf (get caros_common_msgs::ConfigInt :request) caros_common_msgs::ConfigIntRequest)
(setf (get caros_common_msgs::ConfigInt :response) caros_common_msgs::ConfigIntResponse)

(defmethod caros_common_msgs::ConfigIntRequest
  (:response () (instance caros_common_msgs::ConfigIntResponse :init)))

(setf (get caros_common_msgs::ConfigIntRequest :md5sum-) "90cf831f17d9eb3982e6a04cd41f654b")
(setf (get caros_common_msgs::ConfigIntRequest :datatype-) "caros_common_msgs/ConfigIntRequest")
(setf (get caros_common_msgs::ConfigIntRequest :definition-)
      "
uint32 value
---
bool success

")

(setf (get caros_common_msgs::ConfigIntResponse :md5sum-) "90cf831f17d9eb3982e6a04cd41f654b")
(setf (get caros_common_msgs::ConfigIntResponse :datatype-) "caros_common_msgs/ConfigIntResponse")
(setf (get caros_common_msgs::ConfigIntResponse :definition-)
      "
uint32 value
---
bool success

")



(provide :caros_common_msgs/ConfigInt "90cf831f17d9eb3982e6a04cd41f654b")



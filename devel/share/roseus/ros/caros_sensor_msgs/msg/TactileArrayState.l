;; Auto-generated. Do not edit!


(when (boundp 'caros_sensor_msgs::TactileArrayState)
  (if (not (find-package "CAROS_SENSOR_MSGS"))
    (make-package "CAROS_SENSOR_MSGS"))
  (shadow 'TactileArrayState (find-package "CAROS_SENSOR_MSGS")))
(unless (find-package "CAROS_SENSOR_MSGS::TACTILEARRAYSTATE")
  (make-package "CAROS_SENSOR_MSGS::TACTILEARRAYSTATE"))

(in-package "ROS")
;;//! \htmlinclude TactileArrayState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass caros_sensor_msgs::TactileArrayState
  :super ros::object
  :slots (_header _data ))

(defmethod caros_sensor_msgs::TactileArrayState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance caros_sensor_msgs::TactileArrayData :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; caros_sensor_msgs/TactileArrayData[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; caros_sensor_msgs/TactileArrayData[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; caros_sensor_msgs/TactileArrayData[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance caros_sensor_msgs::TactileArrayData :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get caros_sensor_msgs::TactileArrayState :md5sum-) "e53557c2a59800894edb24657c7a5331")
(setf (get caros_sensor_msgs::TactileArrayState :datatype-) "caros_sensor_msgs/TactileArrayState")
(setf (get caros_sensor_msgs::TactileArrayState :definition-)
      "# Represents the state of a tactile array sensor. Such a sensor
# may have multiple arrays.

# Header containing information about time and frameid
Header header

# The tactile arrays
TactileArrayData[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: caros_sensor_msgs/TactileArrayData
# Tepresents the state of a single array of tactile sensors. This should be used
# in conjuction with TactileArrayState.

# Tactile matrix height (number of rows)
uint32 height

# Tactile matrix width (number of columns)
uint32 width

# Tactile data
float64[] data

")



(provide :caros_sensor_msgs/TactileArrayState "e53557c2a59800894edb24657c7a5331")



;; Auto-generated. Do not edit!


(when (boundp 'caros_sensor_msgs::PoseSensorState)
  (if (not (find-package "CAROS_SENSOR_MSGS"))
    (make-package "CAROS_SENSOR_MSGS"))
  (shadow 'PoseSensorState (find-package "CAROS_SENSOR_MSGS")))
(unless (find-package "CAROS_SENSOR_MSGS::POSESENSORSTATE")
  (make-package "CAROS_SENSOR_MSGS::POSESENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude PoseSensorState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass caros_sensor_msgs::PoseSensorState
  :super ros::object
  :slots (_header _poses _ids _qualities ))

(defmethod caros_sensor_msgs::PoseSensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:qualities __qualities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _poses __poses)
   (setq _ids __ids)
   (setq _qualities __qualities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:qualities
   (&optional __qualities)
   (if __qualities (setq _qualities __qualities)) _qualities)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Transform[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; float32[] _qualities
    (* 4    (length _qualities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Transform[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; uint32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; float32[] _qualities
     (write-long (length _qualities) s)
     (dotimes (i (length _qualities))
       (sys::poke (elt _qualities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Transform[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _qualities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qualities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qualities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get caros_sensor_msgs::PoseSensorState :md5sum-) "36099bad0734951e3bf310e00a5d4523")
(setf (get caros_sensor_msgs::PoseSensorState :datatype-) "caros_sensor_msgs/PoseSensorState")
(setf (get caros_sensor_msgs::PoseSensorState :definition-)
      "# Represents the state of a pose sensor.

# Header containing information about time and frameid
Header header

# Poses of the sensor
geometry_msgs/Transform[] poses

# IDs of the poses
uint32[] ids

# Quality of the sensor pose measurements [0;1] 0=invalid, 1=high quality.
float32[] qualities

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :caros_sensor_msgs/PoseSensorState "36099bad0734951e3bf310e00a5d4523")



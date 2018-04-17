;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::RobotState)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'RobotState (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::ROBOTSTATE")
  (make-package "CAROS_CONTROL_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass caros_control_msgs::RobotState
  :super ros::object
  :slots (_header _q _dq _is_moving _is_colliding _e_stopped _s_stopped ))

(defmethod caros_control_msgs::RobotState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:q __q) (instance caros_common_msgs::Q :init))
    ((:dq __dq) (instance caros_common_msgs::Q :init))
    ((:is_moving __is_moving) nil)
    ((:is_colliding __is_colliding) nil)
    ((:e_stopped __e_stopped) nil)
    ((:s_stopped __s_stopped) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _q __q)
   (setq _dq __dq)
   (setq _is_moving __is_moving)
   (setq _is_colliding __is_colliding)
   (setq _e_stopped __e_stopped)
   (setq _s_stopped __s_stopped)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:q
   (&rest __q)
   (if (keywordp (car __q))
       (send* _q __q)
     (progn
       (if __q (setq _q (car __q)))
       _q)))
  (:dq
   (&rest __dq)
   (if (keywordp (car __dq))
       (send* _dq __dq)
     (progn
       (if __dq (setq _dq (car __dq)))
       _dq)))
  (:is_moving
   (&optional __is_moving)
   (if __is_moving (setq _is_moving __is_moving)) _is_moving)
  (:is_colliding
   (&optional __is_colliding)
   (if __is_colliding (setq _is_colliding __is_colliding)) _is_colliding)
  (:e_stopped
   (&optional __e_stopped)
   (if __e_stopped (setq _e_stopped __e_stopped)) _e_stopped)
  (:s_stopped
   (&optional __s_stopped)
   (if __s_stopped (setq _s_stopped __s_stopped)) _s_stopped)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; caros_common_msgs/Q _q
    (send _q :serialization-length)
    ;; caros_common_msgs/Q _dq
    (send _dq :serialization-length)
    ;; bool _is_moving
    1
    ;; bool _is_colliding
    1
    ;; bool _e_stopped
    1
    ;; bool _s_stopped
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; caros_common_msgs/Q _q
       (send _q :serialize s)
     ;; caros_common_msgs/Q _dq
       (send _dq :serialize s)
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_colliding
       (if _is_colliding (write-byte -1 s) (write-byte 0 s))
     ;; bool _e_stopped
       (if _e_stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _s_stopped
       (if _s_stopped (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; caros_common_msgs/Q _q
     (send _q :deserialize buf ptr-) (incf ptr- (send _q :serialization-length))
   ;; caros_common_msgs/Q _dq
     (send _dq :deserialize buf ptr-) (incf ptr- (send _dq :serialization-length))
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_colliding
     (setq _is_colliding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _e_stopped
     (setq _e_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _s_stopped
     (setq _s_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get caros_control_msgs::RobotState :md5sum-) "3df80523bcb99d54ccf86ae91d0d78ba")
(setf (get caros_control_msgs::RobotState :datatype-) "caros_control_msgs/RobotState")
(setf (get caros_control_msgs::RobotState :definition-)
      "#RobotState represents the state of one a single robot in the setup.

#Header containing information about time and frameid
Header header

#Joint configuration.
# Angles should be represented as radians and distances in meters.
caros_common_msgs/Q q

#Velocities should be represented as radians per sec
caros_common_msgs/Q dq

#Is the robot moving
bool is_moving

#Is the robot in collision
bool is_colliding

#Is Emergency Stopped
bool e_stopped

#Is Security Stopped
bool s_stopped

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
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data

")



(provide :caros_control_msgs/RobotState "3df80523bcb99d54ccf86ae91d0d78ba")



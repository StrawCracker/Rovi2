;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::GripperState)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'GripperState (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSTATE")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html
(if (not (find-package "CAROS_COMMON_MSGS"))
  (ros::roseus-add-msgs "caros_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass caros_control_msgs::GripperState
  :super ros::object
  :slots (_header _q _dq _force _is_moving _is_blocked _is_stopped _e_stopped ))

(defmethod caros_control_msgs::GripperState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:q __q) (instance caros_common_msgs::Q :init))
    ((:dq __dq) (instance caros_common_msgs::Q :init))
    ((:force __force) (instance caros_common_msgs::Q :init))
    ((:is_moving __is_moving) nil)
    ((:is_blocked __is_blocked) nil)
    ((:is_stopped __is_stopped) nil)
    ((:e_stopped __e_stopped) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _q __q)
   (setq _dq __dq)
   (setq _force __force)
   (setq _is_moving __is_moving)
   (setq _is_blocked __is_blocked)
   (setq _is_stopped __is_stopped)
   (setq _e_stopped __e_stopped)
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
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:is_moving
   (&optional __is_moving)
   (if __is_moving (setq _is_moving __is_moving)) _is_moving)
  (:is_blocked
   (&optional __is_blocked)
   (if __is_blocked (setq _is_blocked __is_blocked)) _is_blocked)
  (:is_stopped
   (&optional __is_stopped)
   (if __is_stopped (setq _is_stopped __is_stopped)) _is_stopped)
  (:e_stopped
   (&optional __e_stopped)
   (if __e_stopped (setq _e_stopped __e_stopped)) _e_stopped)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; caros_common_msgs/Q _q
    (send _q :serialization-length)
    ;; caros_common_msgs/Q _dq
    (send _dq :serialization-length)
    ;; caros_common_msgs/Q _force
    (send _force :serialization-length)
    ;; bool _is_moving
    1
    ;; bool _is_blocked
    1
    ;; bool _is_stopped
    1
    ;; bool _e_stopped
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
     ;; caros_common_msgs/Q _force
       (send _force :serialize s)
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_blocked
       (if _is_blocked (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_stopped
       (if _is_stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _e_stopped
       (if _e_stopped (write-byte -1 s) (write-byte 0 s))
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
   ;; caros_common_msgs/Q _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_blocked
     (setq _is_blocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_stopped
     (setq _is_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _e_stopped
     (setq _e_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get caros_control_msgs::GripperState :md5sum-) "25dfabc8c04bee1186049dd520841711")
(setf (get caros_control_msgs::GripperState :datatype-) "caros_control_msgs/GripperState")
(setf (get caros_control_msgs::GripperState :definition-)
      "# GripperState represents the state of a single gripper in the setup.

# Header containing information about time and frameid
Header header

# Joint configuration.
# Angles should be represented as radians and distances in meters.
caros_common_msgs/Q q

# Velocities should be represented as radians per sec
caros_common_msgs/Q dq

# Approximate force applied by the gripper joints (most implementations simply output the measured current)
caros_common_msgs/Q force

# Is the gripper trying to move to a target (notice it can still be blocked even if isMoving is true)
bool is_moving

# If the gripper is moving then it may be blocked.
bool is_blocked

# If the gripper reached its target then isStopped is true
bool is_stopped

# Is Emergency Stopped
bool e_stopped


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



(provide :caros_control_msgs/GripperState "25dfabc8c04bee1186049dd520841711")



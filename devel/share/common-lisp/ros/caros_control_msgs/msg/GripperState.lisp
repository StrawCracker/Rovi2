; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-msg)


;//! \htmlinclude GripperState.msg.html

(cl:defclass <GripperState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (q
    :reader q
    :initarg :q
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q))
   (dq
    :reader dq
    :initarg :dq
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q))
   (force
    :reader force
    :initarg :force
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q))
   (is_moving
    :reader is_moving
    :initarg :is_moving
    :type cl:boolean
    :initform cl:nil)
   (is_blocked
    :reader is_blocked
    :initarg :is_blocked
    :type cl:boolean
    :initform cl:nil)
   (is_stopped
    :reader is_stopped
    :initarg :is_stopped
    :type cl:boolean
    :initform cl:nil)
   (e_stopped
    :reader e_stopped
    :initarg :e_stopped
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperState (<GripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-msg:<GripperState> is deprecated: use caros_control_msgs-msg:GripperState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:header-val is deprecated.  Use caros_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:q-val is deprecated.  Use caros_control_msgs-msg:q instead.")
  (q m))

(cl:ensure-generic-function 'dq-val :lambda-list '(m))
(cl:defmethod dq-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:dq-val is deprecated.  Use caros_control_msgs-msg:dq instead.")
  (dq m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:force-val is deprecated.  Use caros_control_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'is_moving-val :lambda-list '(m))
(cl:defmethod is_moving-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:is_moving-val is deprecated.  Use caros_control_msgs-msg:is_moving instead.")
  (is_moving m))

(cl:ensure-generic-function 'is_blocked-val :lambda-list '(m))
(cl:defmethod is_blocked-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:is_blocked-val is deprecated.  Use caros_control_msgs-msg:is_blocked instead.")
  (is_blocked m))

(cl:ensure-generic-function 'is_stopped-val :lambda-list '(m))
(cl:defmethod is_stopped-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:is_stopped-val is deprecated.  Use caros_control_msgs-msg:is_stopped instead.")
  (is_stopped m))

(cl:ensure-generic-function 'e_stopped-val :lambda-list '(m))
(cl:defmethod e_stopped-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:e_stopped-val is deprecated.  Use caros_control_msgs-msg:e_stopped instead.")
  (e_stopped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperState>) ostream)
  "Serializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dq) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_blocked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'e_stopped) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperState>) istream)
  "Deserializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dq) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
    (cl:setf (cl:slot-value msg 'is_moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_blocked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'e_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperState>)))
  "Returns string type for a message object of type '<GripperState>"
  "caros_control_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperState)))
  "Returns string type for a message object of type 'GripperState"
  "caros_control_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperState>)))
  "Returns md5sum for a message object of type '<GripperState>"
  "25dfabc8c04bee1186049dd520841711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperState)))
  "Returns md5sum for a message object of type 'GripperState"
  "25dfabc8c04bee1186049dd520841711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperState>)))
  "Returns full string definition for message of type '<GripperState>"
  (cl:format cl:nil "# GripperState represents the state of a single gripper in the setup.~%~%# Header containing information about time and frameid~%Header header~%~%# Joint configuration.~%# Angles should be represented as radians and distances in meters.~%caros_common_msgs/Q q~%~%# Velocities should be represented as radians per sec~%caros_common_msgs/Q dq~%~%# Approximate force applied by the gripper joints (most implementations simply output the measured current)~%caros_common_msgs/Q force~%~%# Is the gripper trying to move to a target (notice it can still be blocked even if isMoving is true)~%bool is_moving~%~%# If the gripper is moving then it may be blocked.~%bool is_blocked~%~%# If the gripper reached its target then isStopped is true~%bool is_stopped~%~%# Is Emergency Stopped~%bool e_stopped~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperState)))
  "Returns full string definition for message of type 'GripperState"
  (cl:format cl:nil "# GripperState represents the state of a single gripper in the setup.~%~%# Header containing information about time and frameid~%Header header~%~%# Joint configuration.~%# Angles should be represented as radians and distances in meters.~%caros_common_msgs/Q q~%~%# Velocities should be represented as radians per sec~%caros_common_msgs/Q dq~%~%# Approximate force applied by the gripper joints (most implementations simply output the measured current)~%caros_common_msgs/Q force~%~%# Is the gripper trying to move to a target (notice it can still be blocked even if isMoving is true)~%bool is_moving~%~%# If the gripper is moving then it may be blocked.~%bool is_blocked~%~%# If the gripper reached its target then isStopped is true~%bool is_stopped~%~%# Is Emergency Stopped~%bool e_stopped~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dq))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperState
    (cl:cons ':header (header msg))
    (cl:cons ':q (q msg))
    (cl:cons ':dq (dq msg))
    (cl:cons ':force (force msg))
    (cl:cons ':is_moving (is_moving msg))
    (cl:cons ':is_blocked (is_blocked msg))
    (cl:cons ':is_stopped (is_stopped msg))
    (cl:cons ':e_stopped (e_stopped msg))
))

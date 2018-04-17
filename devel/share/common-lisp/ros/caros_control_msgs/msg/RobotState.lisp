; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-msg)


;//! \htmlinclude RobotState.msg.html

(cl:defclass <RobotState> (roslisp-msg-protocol:ros-message)
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
   (is_moving
    :reader is_moving
    :initarg :is_moving
    :type cl:boolean
    :initform cl:nil)
   (is_colliding
    :reader is_colliding
    :initarg :is_colliding
    :type cl:boolean
    :initform cl:nil)
   (e_stopped
    :reader e_stopped
    :initarg :e_stopped
    :type cl:boolean
    :initform cl:nil)
   (s_stopped
    :reader s_stopped
    :initarg :s_stopped
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotState (<RobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-msg:<RobotState> is deprecated: use caros_control_msgs-msg:RobotState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:header-val is deprecated.  Use caros_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:q-val is deprecated.  Use caros_control_msgs-msg:q instead.")
  (q m))

(cl:ensure-generic-function 'dq-val :lambda-list '(m))
(cl:defmethod dq-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:dq-val is deprecated.  Use caros_control_msgs-msg:dq instead.")
  (dq m))

(cl:ensure-generic-function 'is_moving-val :lambda-list '(m))
(cl:defmethod is_moving-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:is_moving-val is deprecated.  Use caros_control_msgs-msg:is_moving instead.")
  (is_moving m))

(cl:ensure-generic-function 'is_colliding-val :lambda-list '(m))
(cl:defmethod is_colliding-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:is_colliding-val is deprecated.  Use caros_control_msgs-msg:is_colliding instead.")
  (is_colliding m))

(cl:ensure-generic-function 'e_stopped-val :lambda-list '(m))
(cl:defmethod e_stopped-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:e_stopped-val is deprecated.  Use caros_control_msgs-msg:e_stopped instead.")
  (e_stopped m))

(cl:ensure-generic-function 's_stopped-val :lambda-list '(m))
(cl:defmethod s_stopped-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-msg:s_stopped-val is deprecated.  Use caros_control_msgs-msg:s_stopped instead.")
  (s_stopped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotState>) ostream)
  "Serializes a message object of type '<RobotState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dq) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_colliding) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'e_stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 's_stopped) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotState>) istream)
  "Deserializes a message object of type '<RobotState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dq) istream)
    (cl:setf (cl:slot-value msg 'is_moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_colliding) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'e_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 's_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotState>)))
  "Returns string type for a message object of type '<RobotState>"
  "caros_control_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotState)))
  "Returns string type for a message object of type 'RobotState"
  "caros_control_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotState>)))
  "Returns md5sum for a message object of type '<RobotState>"
  "3df80523bcb99d54ccf86ae91d0d78ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotState)))
  "Returns md5sum for a message object of type 'RobotState"
  "3df80523bcb99d54ccf86ae91d0d78ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotState>)))
  "Returns full string definition for message of type '<RobotState>"
  (cl:format cl:nil "#RobotState represents the state of one a single robot in the setup.~%~%#Header containing information about time and frameid~%Header header~%~%#Joint configuration.~%# Angles should be represented as radians and distances in meters.~%caros_common_msgs/Q q~%~%#Velocities should be represented as radians per sec~%caros_common_msgs/Q dq~%~%#Is the robot moving~%bool is_moving~%~%#Is the robot in collision~%bool is_colliding~%~%#Is Emergency Stopped~%bool e_stopped~%~%#Is Security Stopped~%bool s_stopped~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotState)))
  "Returns full string definition for message of type 'RobotState"
  (cl:format cl:nil "#RobotState represents the state of one a single robot in the setup.~%~%#Header containing information about time and frameid~%Header header~%~%#Joint configuration.~%# Angles should be represented as radians and distances in meters.~%caros_common_msgs/Q q~%~%#Velocities should be represented as radians per sec~%caros_common_msgs/Q dq~%~%#Is the robot moving~%bool is_moving~%~%#Is the robot in collision~%bool is_colliding~%~%#Is Emergency Stopped~%bool e_stopped~%~%#Is Security Stopped~%bool s_stopped~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dq))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotState
    (cl:cons ':header (header msg))
    (cl:cons ':q (q msg))
    (cl:cons ':dq (dq msg))
    (cl:cons ':is_moving (is_moving msg))
    (cl:cons ':is_colliding (is_colliding msg))
    (cl:cons ':e_stopped (e_stopped msg))
    (cl:cons ':s_stopped (s_stopped msg))
))

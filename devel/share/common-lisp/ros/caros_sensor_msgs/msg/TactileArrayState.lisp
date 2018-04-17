; Auto-generated. Do not edit!


(cl:in-package caros_sensor_msgs-msg)


;//! \htmlinclude TactileArrayState.msg.html

(cl:defclass <TactileArrayState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector caros_sensor_msgs-msg:TactileArrayData)
   :initform (cl:make-array 0 :element-type 'caros_sensor_msgs-msg:TactileArrayData :initial-element (cl:make-instance 'caros_sensor_msgs-msg:TactileArrayData))))
)

(cl:defclass TactileArrayState (<TactileArrayState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TactileArrayState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TactileArrayState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_sensor_msgs-msg:<TactileArrayState> is deprecated: use caros_sensor_msgs-msg:TactileArrayState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TactileArrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:header-val is deprecated.  Use caros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TactileArrayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:data-val is deprecated.  Use caros_sensor_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TactileArrayState>) ostream)
  "Serializes a message object of type '<TactileArrayState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TactileArrayState>) istream)
  "Deserializes a message object of type '<TactileArrayState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'caros_sensor_msgs-msg:TactileArrayData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TactileArrayState>)))
  "Returns string type for a message object of type '<TactileArrayState>"
  "caros_sensor_msgs/TactileArrayState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TactileArrayState)))
  "Returns string type for a message object of type 'TactileArrayState"
  "caros_sensor_msgs/TactileArrayState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TactileArrayState>)))
  "Returns md5sum for a message object of type '<TactileArrayState>"
  "e53557c2a59800894edb24657c7a5331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TactileArrayState)))
  "Returns md5sum for a message object of type 'TactileArrayState"
  "e53557c2a59800894edb24657c7a5331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TactileArrayState>)))
  "Returns full string definition for message of type '<TactileArrayState>"
  (cl:format cl:nil "# Represents the state of a tactile array sensor. Such a sensor~%# may have multiple arrays.~%~%# Header containing information about time and frameid~%Header header~%~%# The tactile arrays~%TactileArrayData[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_sensor_msgs/TactileArrayData~%# Tepresents the state of a single array of tactile sensors. This should be used~%# in conjuction with TactileArrayState.~%~%# Tactile matrix height (number of rows)~%uint32 height~%~%# Tactile matrix width (number of columns)~%uint32 width~%~%# Tactile data~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TactileArrayState)))
  "Returns full string definition for message of type 'TactileArrayState"
  (cl:format cl:nil "# Represents the state of a tactile array sensor. Such a sensor~%# may have multiple arrays.~%~%# Header containing information about time and frameid~%Header header~%~%# The tactile arrays~%TactileArrayData[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: caros_sensor_msgs/TactileArrayData~%# Tepresents the state of a single array of tactile sensors. This should be used~%# in conjuction with TactileArrayState.~%~%# Tactile matrix height (number of rows)~%uint32 height~%~%# Tactile matrix width (number of columns)~%uint32 width~%~%# Tactile data~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TactileArrayState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TactileArrayState>))
  "Converts a ROS message object to a list"
  (cl:list 'TactileArrayState
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))

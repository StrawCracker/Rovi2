; Auto-generated. Do not edit!


(cl:in-package caros_sensor_msgs-msg)


;//! \htmlinclude ButtonSensorState.msg.html

(cl:defclass <ButtonSensorState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (digital
    :reader digital
    :initarg :digital
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (digital_ids
    :reader digital_ids
    :initarg :digital_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (analog
    :reader analog
    :initarg :analog
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (analog_ids
    :reader analog_ids
    :initarg :analog_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ButtonSensorState (<ButtonSensorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonSensorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonSensorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_sensor_msgs-msg:<ButtonSensorState> is deprecated: use caros_sensor_msgs-msg:ButtonSensorState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ButtonSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:header-val is deprecated.  Use caros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'digital-val :lambda-list '(m))
(cl:defmethod digital-val ((m <ButtonSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:digital-val is deprecated.  Use caros_sensor_msgs-msg:digital instead.")
  (digital m))

(cl:ensure-generic-function 'digital_ids-val :lambda-list '(m))
(cl:defmethod digital_ids-val ((m <ButtonSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:digital_ids-val is deprecated.  Use caros_sensor_msgs-msg:digital_ids instead.")
  (digital_ids m))

(cl:ensure-generic-function 'analog-val :lambda-list '(m))
(cl:defmethod analog-val ((m <ButtonSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:analog-val is deprecated.  Use caros_sensor_msgs-msg:analog instead.")
  (analog m))

(cl:ensure-generic-function 'analog_ids-val :lambda-list '(m))
(cl:defmethod analog_ids-val ((m <ButtonSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:analog_ids-val is deprecated.  Use caros_sensor_msgs-msg:analog_ids instead.")
  (analog_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonSensorState>) ostream)
  "Serializes a message object of type '<ButtonSensorState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'digital))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'digital_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'analog))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'analog_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonSensorState>) istream)
  "Deserializes a message object of type '<ButtonSensorState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonSensorState>)))
  "Returns string type for a message object of type '<ButtonSensorState>"
  "caros_sensor_msgs/ButtonSensorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonSensorState)))
  "Returns string type for a message object of type 'ButtonSensorState"
  "caros_sensor_msgs/ButtonSensorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonSensorState>)))
  "Returns md5sum for a message object of type '<ButtonSensorState>"
  "cbc246135ff6dad08335b5ff9b905da1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonSensorState)))
  "Returns md5sum for a message object of type 'ButtonSensorState"
  "cbc246135ff6dad08335b5ff9b905da1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonSensorState>)))
  "Returns full string definition for message of type '<ButtonSensorState>"
  (cl:format cl:nil "# Represents the state of a set of analog and digital buttons.~%~%# Header containing information about time and frameid~%Header header~%~%# Array of bools for digital buttons~%bool[] digital~%~%# IDs for the digital buttons~%string[] digital_ids~%~%# Array of values for analog buttons~%bool[] analog~%~%# IDs for the analog buttons~%string[] analog_ids~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonSensorState)))
  "Returns full string definition for message of type 'ButtonSensorState"
  (cl:format cl:nil "# Represents the state of a set of analog and digital buttons.~%~%# Header containing information about time and frameid~%Header header~%~%# Array of bools for digital buttons~%bool[] digital~%~%# IDs for the digital buttons~%string[] digital_ids~%~%# Array of values for analog buttons~%bool[] analog~%~%# IDs for the analog buttons~%string[] analog_ids~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonSensorState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonSensorState>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonSensorState
    (cl:cons ':header (header msg))
    (cl:cons ':digital (digital msg))
    (cl:cons ':digital_ids (digital_ids msg))
    (cl:cons ':analog (analog msg))
    (cl:cons ':analog_ids (analog_ids msg))
))

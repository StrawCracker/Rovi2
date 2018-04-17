; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceMoveServoQ-request.msg.html

(cl:defclass <SerialDeviceMoveServoQ-request> (roslisp-msg-protocol:ros-message)
  ((targets
    :reader targets
    :initarg :targets
    :type (cl:vector caros_common_msgs-msg:Q)
   :initform (cl:make-array 0 :element-type 'caros_common_msgs-msg:Q :initial-element (cl:make-instance 'caros_common_msgs-msg:Q)))
   (speeds
    :reader speeds
    :initarg :speeds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SerialDeviceMoveServoQ-request (<SerialDeviceMoveServoQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveServoQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveServoQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveServoQ-request> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveServoQ-request instead.")))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <SerialDeviceMoveServoQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:targets-val is deprecated.  Use caros_control_msgs-srv:targets instead.")
  (targets m))

(cl:ensure-generic-function 'speeds-val :lambda-list '(m))
(cl:defmethod speeds-val ((m <SerialDeviceMoveServoQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:speeds-val is deprecated.  Use caros_control_msgs-srv:speeds instead.")
  (speeds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveServoQ-request>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveServoQ-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'speeds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveServoQ-request>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveServoQ-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'caros_common_msgs-msg:Q))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveServoQ-request>)))
  "Returns string type for a service object of type '<SerialDeviceMoveServoQ-request>"
  "caros_control_msgs/SerialDeviceMoveServoQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveServoQ-request)))
  "Returns string type for a service object of type 'SerialDeviceMoveServoQ-request"
  "caros_control_msgs/SerialDeviceMoveServoQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveServoQ-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveServoQ-request>"
  "8289fdc0949acdbc17fb0989cb66f411")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveServoQ-request)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveServoQ-request"
  "8289fdc0949acdbc17fb0989cb66f411")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveServoQ-request>)))
  "Returns full string definition for message of type '<SerialDeviceMoveServoQ-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q[] targets~%~%~%float32[] speeds~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveServoQ-request)))
  "Returns full string definition for message of type 'SerialDeviceMoveServoQ-request"
  (cl:format cl:nil "~%caros_common_msgs/Q[] targets~%~%~%float32[] speeds~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveServoQ-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveServoQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveServoQ-request
    (cl:cons ':targets (targets msg))
    (cl:cons ':speeds (speeds msg))
))
;//! \htmlinclude SerialDeviceMoveServoQ-response.msg.html

(cl:defclass <SerialDeviceMoveServoQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceMoveServoQ-response (<SerialDeviceMoveServoQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveServoQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveServoQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveServoQ-response> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveServoQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceMoveServoQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveServoQ-response>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveServoQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveServoQ-response>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveServoQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveServoQ-response>)))
  "Returns string type for a service object of type '<SerialDeviceMoveServoQ-response>"
  "caros_control_msgs/SerialDeviceMoveServoQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveServoQ-response)))
  "Returns string type for a service object of type 'SerialDeviceMoveServoQ-response"
  "caros_control_msgs/SerialDeviceMoveServoQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveServoQ-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveServoQ-response>"
  "8289fdc0949acdbc17fb0989cb66f411")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveServoQ-response)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveServoQ-response"
  "8289fdc0949acdbc17fb0989cb66f411")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveServoQ-response>)))
  "Returns full string definition for message of type '<SerialDeviceMoveServoQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveServoQ-response)))
  "Returns full string definition for message of type 'SerialDeviceMoveServoQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveServoQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveServoQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveServoQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceMoveServoQ)))
  'SerialDeviceMoveServoQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceMoveServoQ)))
  'SerialDeviceMoveServoQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveServoQ)))
  "Returns string type for a service object of type '<SerialDeviceMoveServoQ>"
  "caros_control_msgs/SerialDeviceMoveServoQ")
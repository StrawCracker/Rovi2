; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceMovePtp-request.msg.html

(cl:defclass <SerialDeviceMovePtp-request> (roslisp-msg-protocol:ros-message)
  ((targets
    :reader targets
    :initarg :targets
    :type (cl:vector caros_common_msgs-msg:Q)
   :initform (cl:make-array 0 :element-type 'caros_common_msgs-msg:Q :initial-element (cl:make-instance 'caros_common_msgs-msg:Q)))
   (speeds
    :reader speeds
    :initarg :speeds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (blends
    :reader blends
    :initarg :blends
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SerialDeviceMovePtp-request (<SerialDeviceMovePtp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMovePtp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMovePtp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMovePtp-request> is deprecated: use caros_control_msgs-srv:SerialDeviceMovePtp-request instead.")))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <SerialDeviceMovePtp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:targets-val is deprecated.  Use caros_control_msgs-srv:targets instead.")
  (targets m))

(cl:ensure-generic-function 'speeds-val :lambda-list '(m))
(cl:defmethod speeds-val ((m <SerialDeviceMovePtp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:speeds-val is deprecated.  Use caros_control_msgs-srv:speeds instead.")
  (speeds m))

(cl:ensure-generic-function 'blends-val :lambda-list '(m))
(cl:defmethod blends-val ((m <SerialDeviceMovePtp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:blends-val is deprecated.  Use caros_control_msgs-srv:blends instead.")
  (blends m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMovePtp-request>) ostream)
  "Serializes a message object of type '<SerialDeviceMovePtp-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blends))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'blends))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMovePtp-request>) istream)
  "Deserializes a message object of type '<SerialDeviceMovePtp-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blends) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blends)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMovePtp-request>)))
  "Returns string type for a service object of type '<SerialDeviceMovePtp-request>"
  "caros_control_msgs/SerialDeviceMovePtpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtp-request)))
  "Returns string type for a service object of type 'SerialDeviceMovePtp-request"
  "caros_control_msgs/SerialDeviceMovePtpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMovePtp-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceMovePtp-request>"
  "2fbc9fa7b435c3ead71fa46c56458df1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMovePtp-request)))
  "Returns md5sum for a message object of type 'SerialDeviceMovePtp-request"
  "2fbc9fa7b435c3ead71fa46c56458df1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMovePtp-request>)))
  "Returns full string definition for message of type '<SerialDeviceMovePtp-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q[] targets~%~%~%float32[] speeds~%~%~%float32[] blends~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMovePtp-request)))
  "Returns full string definition for message of type 'SerialDeviceMovePtp-request"
  (cl:format cl:nil "~%caros_common_msgs/Q[] targets~%~%~%float32[] speeds~%~%~%float32[] blends~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMovePtp-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blends) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMovePtp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMovePtp-request
    (cl:cons ':targets (targets msg))
    (cl:cons ':speeds (speeds msg))
    (cl:cons ':blends (blends msg))
))
;//! \htmlinclude SerialDeviceMovePtp-response.msg.html

(cl:defclass <SerialDeviceMovePtp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceMovePtp-response (<SerialDeviceMovePtp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMovePtp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMovePtp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMovePtp-response> is deprecated: use caros_control_msgs-srv:SerialDeviceMovePtp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceMovePtp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMovePtp-response>) ostream)
  "Serializes a message object of type '<SerialDeviceMovePtp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMovePtp-response>) istream)
  "Deserializes a message object of type '<SerialDeviceMovePtp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMovePtp-response>)))
  "Returns string type for a service object of type '<SerialDeviceMovePtp-response>"
  "caros_control_msgs/SerialDeviceMovePtpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtp-response)))
  "Returns string type for a service object of type 'SerialDeviceMovePtp-response"
  "caros_control_msgs/SerialDeviceMovePtpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMovePtp-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceMovePtp-response>"
  "2fbc9fa7b435c3ead71fa46c56458df1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMovePtp-response)))
  "Returns md5sum for a message object of type 'SerialDeviceMovePtp-response"
  "2fbc9fa7b435c3ead71fa46c56458df1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMovePtp-response>)))
  "Returns full string definition for message of type '<SerialDeviceMovePtp-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMovePtp-response)))
  "Returns full string definition for message of type 'SerialDeviceMovePtp-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMovePtp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMovePtp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMovePtp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceMovePtp)))
  'SerialDeviceMovePtp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceMovePtp)))
  'SerialDeviceMovePtp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtp)))
  "Returns string type for a service object of type '<SerialDeviceMovePtp>"
  "caros_control_msgs/SerialDeviceMovePtp")
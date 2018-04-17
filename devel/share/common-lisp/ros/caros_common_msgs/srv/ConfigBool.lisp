; Auto-generated. Do not edit!


(cl:in-package caros_common_msgs-srv)


;//! \htmlinclude ConfigBool-request.msg.html

(cl:defclass <ConfigBool-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConfigBool-request (<ConfigBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_msgs-srv:<ConfigBool-request> is deprecated: use caros_common_msgs-srv:ConfigBool-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ConfigBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-srv:value-val is deprecated.  Use caros_common_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigBool-request>) ostream)
  "Serializes a message object of type '<ConfigBool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigBool-request>) istream)
  "Deserializes a message object of type '<ConfigBool-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigBool-request>)))
  "Returns string type for a service object of type '<ConfigBool-request>"
  "caros_common_msgs/ConfigBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigBool-request)))
  "Returns string type for a service object of type 'ConfigBool-request"
  "caros_common_msgs/ConfigBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigBool-request>)))
  "Returns md5sum for a message object of type '<ConfigBool-request>"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigBool-request)))
  "Returns md5sum for a message object of type 'ConfigBool-request"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigBool-request>)))
  "Returns full string definition for message of type '<ConfigBool-request>"
  (cl:format cl:nil "~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigBool-request)))
  "Returns full string definition for message of type 'ConfigBool-request"
  (cl:format cl:nil "~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigBool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigBool-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude ConfigBool-response.msg.html

(cl:defclass <ConfigBool-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConfigBool-response (<ConfigBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_msgs-srv:<ConfigBool-response> is deprecated: use caros_common_msgs-srv:ConfigBool-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConfigBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-srv:success-val is deprecated.  Use caros_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigBool-response>) ostream)
  "Serializes a message object of type '<ConfigBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigBool-response>) istream)
  "Deserializes a message object of type '<ConfigBool-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigBool-response>)))
  "Returns string type for a service object of type '<ConfigBool-response>"
  "caros_common_msgs/ConfigBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigBool-response)))
  "Returns string type for a service object of type 'ConfigBool-response"
  "caros_common_msgs/ConfigBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigBool-response>)))
  "Returns md5sum for a message object of type '<ConfigBool-response>"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigBool-response)))
  "Returns md5sum for a message object of type 'ConfigBool-response"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigBool-response>)))
  "Returns full string definition for message of type '<ConfigBool-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigBool-response)))
  "Returns full string definition for message of type 'ConfigBool-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigBool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigBool-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigBool)))
  'ConfigBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigBool)))
  'ConfigBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigBool)))
  "Returns string type for a service object of type '<ConfigBool>"
  "caros_common_msgs/ConfigBool")
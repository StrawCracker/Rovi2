; Auto-generated. Do not edit!


(cl:in-package caros_common_msgs-srv)


;//! \htmlinclude ConfigInt-request.msg.html

(cl:defclass <ConfigInt-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigInt-request (<ConfigInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_msgs-srv:<ConfigInt-request> is deprecated: use caros_common_msgs-srv:ConfigInt-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ConfigInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-srv:value-val is deprecated.  Use caros_common_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigInt-request>) ostream)
  "Serializes a message object of type '<ConfigInt-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigInt-request>) istream)
  "Deserializes a message object of type '<ConfigInt-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigInt-request>)))
  "Returns string type for a service object of type '<ConfigInt-request>"
  "caros_common_msgs/ConfigIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigInt-request)))
  "Returns string type for a service object of type 'ConfigInt-request"
  "caros_common_msgs/ConfigIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigInt-request>)))
  "Returns md5sum for a message object of type '<ConfigInt-request>"
  "90cf831f17d9eb3982e6a04cd41f654b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigInt-request)))
  "Returns md5sum for a message object of type 'ConfigInt-request"
  "90cf831f17d9eb3982e6a04cd41f654b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigInt-request>)))
  "Returns full string definition for message of type '<ConfigInt-request>"
  (cl:format cl:nil "~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigInt-request)))
  "Returns full string definition for message of type 'ConfigInt-request"
  (cl:format cl:nil "~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigInt-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigInt-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude ConfigInt-response.msg.html

(cl:defclass <ConfigInt-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConfigInt-response (<ConfigInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_msgs-srv:<ConfigInt-response> is deprecated: use caros_common_msgs-srv:ConfigInt-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConfigInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-srv:success-val is deprecated.  Use caros_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigInt-response>) ostream)
  "Serializes a message object of type '<ConfigInt-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigInt-response>) istream)
  "Deserializes a message object of type '<ConfigInt-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigInt-response>)))
  "Returns string type for a service object of type '<ConfigInt-response>"
  "caros_common_msgs/ConfigIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigInt-response)))
  "Returns string type for a service object of type 'ConfigInt-response"
  "caros_common_msgs/ConfigIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigInt-response>)))
  "Returns md5sum for a message object of type '<ConfigInt-response>"
  "90cf831f17d9eb3982e6a04cd41f654b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigInt-response)))
  "Returns md5sum for a message object of type 'ConfigInt-response"
  "90cf831f17d9eb3982e6a04cd41f654b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigInt-response>)))
  "Returns full string definition for message of type '<ConfigInt-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigInt-response)))
  "Returns full string definition for message of type 'ConfigInt-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigInt-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigInt-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigInt)))
  'ConfigInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigInt)))
  'ConfigInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigInt)))
  "Returns string type for a service object of type '<ConfigInt>"
  "caros_common_msgs/ConfigInt")
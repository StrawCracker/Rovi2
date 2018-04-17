; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceServoQ-request.msg.html

(cl:defclass <UrServiceServoQ-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass UrServiceServoQ-request (<UrServiceServoQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceServoQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceServoQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceServoQ-request> is deprecated: use caros_universalrobot-srv:UrServiceServoQ-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <UrServiceServoQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:target-val is deprecated.  Use caros_universalrobot-srv:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceServoQ-request>) ostream)
  "Serializes a message object of type '<UrServiceServoQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceServoQ-request>) istream)
  "Deserializes a message object of type '<UrServiceServoQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceServoQ-request>)))
  "Returns string type for a service object of type '<UrServiceServoQ-request>"
  "caros_universalrobot/UrServiceServoQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoQ-request)))
  "Returns string type for a service object of type 'UrServiceServoQ-request"
  "caros_universalrobot/UrServiceServoQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceServoQ-request>)))
  "Returns md5sum for a message object of type '<UrServiceServoQ-request>"
  "a0ad63434e4812ee019f31d434b9f910")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceServoQ-request)))
  "Returns md5sum for a message object of type 'UrServiceServoQ-request"
  "a0ad63434e4812ee019f31d434b9f910")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceServoQ-request>)))
  "Returns full string definition for message of type '<UrServiceServoQ-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q target~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceServoQ-request)))
  "Returns full string definition for message of type 'UrServiceServoQ-request"
  (cl:format cl:nil "~%caros_common_msgs/Q target~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceServoQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceServoQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceServoQ-request
    (cl:cons ':target (target msg))
))
;//! \htmlinclude UrServiceServoQ-response.msg.html

(cl:defclass <UrServiceServoQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceServoQ-response (<UrServiceServoQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceServoQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceServoQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceServoQ-response> is deprecated: use caros_universalrobot-srv:UrServiceServoQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceServoQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceServoQ-response>) ostream)
  "Serializes a message object of type '<UrServiceServoQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceServoQ-response>) istream)
  "Deserializes a message object of type '<UrServiceServoQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceServoQ-response>)))
  "Returns string type for a service object of type '<UrServiceServoQ-response>"
  "caros_universalrobot/UrServiceServoQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoQ-response)))
  "Returns string type for a service object of type 'UrServiceServoQ-response"
  "caros_universalrobot/UrServiceServoQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceServoQ-response>)))
  "Returns md5sum for a message object of type '<UrServiceServoQ-response>"
  "a0ad63434e4812ee019f31d434b9f910")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceServoQ-response)))
  "Returns md5sum for a message object of type 'UrServiceServoQ-response"
  "a0ad63434e4812ee019f31d434b9f910")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceServoQ-response>)))
  "Returns full string definition for message of type '<UrServiceServoQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceServoQ-response)))
  "Returns full string definition for message of type 'UrServiceServoQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceServoQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceServoQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceServoQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceServoQ)))
  'UrServiceServoQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceServoQ)))
  'UrServiceServoQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoQ)))
  "Returns string type for a service object of type '<UrServiceServoQ>"
  "caros_universalrobot/UrServiceServoQ")
; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceForceModeStop-request.msg.html

(cl:defclass <UrServiceForceModeStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UrServiceForceModeStop-request (<UrServiceForceModeStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeStop-request> is deprecated: use caros_universalrobot-srv:UrServiceForceModeStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeStop-request>) ostream)
  "Serializes a message object of type '<UrServiceForceModeStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeStop-request>) istream)
  "Deserializes a message object of type '<UrServiceForceModeStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeStop-request>)))
  "Returns string type for a service object of type '<UrServiceForceModeStop-request>"
  "caros_universalrobot/UrServiceForceModeStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStop-request)))
  "Returns string type for a service object of type 'UrServiceForceModeStop-request"
  "caros_universalrobot/UrServiceForceModeStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeStop-request>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeStop-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeStop-request)))
  "Returns md5sum for a message object of type 'UrServiceForceModeStop-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeStop-request>)))
  "Returns full string definition for message of type '<UrServiceForceModeStop-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeStop-request)))
  "Returns full string definition for message of type 'UrServiceForceModeStop-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeStop-request
))
;//! \htmlinclude UrServiceForceModeStop-response.msg.html

(cl:defclass <UrServiceForceModeStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceForceModeStop-response (<UrServiceForceModeStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeStop-response> is deprecated: use caros_universalrobot-srv:UrServiceForceModeStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceForceModeStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeStop-response>) ostream)
  "Serializes a message object of type '<UrServiceForceModeStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeStop-response>) istream)
  "Deserializes a message object of type '<UrServiceForceModeStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeStop-response>)))
  "Returns string type for a service object of type '<UrServiceForceModeStop-response>"
  "caros_universalrobot/UrServiceForceModeStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStop-response)))
  "Returns string type for a service object of type 'UrServiceForceModeStop-response"
  "caros_universalrobot/UrServiceForceModeStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeStop-response>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeStop-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeStop-response)))
  "Returns md5sum for a message object of type 'UrServiceForceModeStop-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeStop-response>)))
  "Returns full string definition for message of type '<UrServiceForceModeStop-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeStop-response)))
  "Returns full string definition for message of type 'UrServiceForceModeStop-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceForceModeStop)))
  'UrServiceForceModeStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceForceModeStop)))
  'UrServiceForceModeStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStop)))
  "Returns string type for a service object of type '<UrServiceForceModeStop>"
  "caros_universalrobot/UrServiceForceModeStop")
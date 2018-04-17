; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceEmpty-request.msg.html

(cl:defclass <UrServiceEmpty-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UrServiceEmpty-request (<UrServiceEmpty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceEmpty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceEmpty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceEmpty-request> is deprecated: use caros_universalrobot-srv:UrServiceEmpty-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceEmpty-request>) ostream)
  "Serializes a message object of type '<UrServiceEmpty-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceEmpty-request>) istream)
  "Deserializes a message object of type '<UrServiceEmpty-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceEmpty-request>)))
  "Returns string type for a service object of type '<UrServiceEmpty-request>"
  "caros_universalrobot/UrServiceEmptyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceEmpty-request)))
  "Returns string type for a service object of type 'UrServiceEmpty-request"
  "caros_universalrobot/UrServiceEmptyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceEmpty-request>)))
  "Returns md5sum for a message object of type '<UrServiceEmpty-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceEmpty-request)))
  "Returns md5sum for a message object of type 'UrServiceEmpty-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceEmpty-request>)))
  "Returns full string definition for message of type '<UrServiceEmpty-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceEmpty-request)))
  "Returns full string definition for message of type 'UrServiceEmpty-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceEmpty-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceEmpty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceEmpty-request
))
;//! \htmlinclude UrServiceEmpty-response.msg.html

(cl:defclass <UrServiceEmpty-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceEmpty-response (<UrServiceEmpty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceEmpty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceEmpty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceEmpty-response> is deprecated: use caros_universalrobot-srv:UrServiceEmpty-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceEmpty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceEmpty-response>) ostream)
  "Serializes a message object of type '<UrServiceEmpty-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceEmpty-response>) istream)
  "Deserializes a message object of type '<UrServiceEmpty-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceEmpty-response>)))
  "Returns string type for a service object of type '<UrServiceEmpty-response>"
  "caros_universalrobot/UrServiceEmptyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceEmpty-response)))
  "Returns string type for a service object of type 'UrServiceEmpty-response"
  "caros_universalrobot/UrServiceEmptyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceEmpty-response>)))
  "Returns md5sum for a message object of type '<UrServiceEmpty-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceEmpty-response)))
  "Returns md5sum for a message object of type 'UrServiceEmpty-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceEmpty-response>)))
  "Returns full string definition for message of type '<UrServiceEmpty-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceEmpty-response)))
  "Returns full string definition for message of type 'UrServiceEmpty-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceEmpty-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceEmpty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceEmpty-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceEmpty)))
  'UrServiceEmpty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceEmpty)))
  'UrServiceEmpty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceEmpty)))
  "Returns string type for a service object of type '<UrServiceEmpty>"
  "caros_universalrobot/UrServiceEmpty")
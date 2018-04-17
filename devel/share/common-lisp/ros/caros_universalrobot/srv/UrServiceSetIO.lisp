; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceSetIO-request.msg.html

(cl:defclass <UrServiceSetIO-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceSetIO-request (<UrServiceSetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceSetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceSetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceSetIO-request> is deprecated: use caros_universalrobot-srv:UrServiceSetIO-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <UrServiceSetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:pin-val is deprecated.  Use caros_universalrobot-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UrServiceSetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:value-val is deprecated.  Use caros_universalrobot-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceSetIO-request>) ostream)
  "Serializes a message object of type '<UrServiceSetIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceSetIO-request>) istream)
  "Deserializes a message object of type '<UrServiceSetIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceSetIO-request>)))
  "Returns string type for a service object of type '<UrServiceSetIO-request>"
  "caros_universalrobot/UrServiceSetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceSetIO-request)))
  "Returns string type for a service object of type 'UrServiceSetIO-request"
  "caros_universalrobot/UrServiceSetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceSetIO-request>)))
  "Returns md5sum for a message object of type '<UrServiceSetIO-request>"
  "42b22819bd3f8744fa17cdb490b70f35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceSetIO-request)))
  "Returns md5sum for a message object of type 'UrServiceSetIO-request"
  "42b22819bd3f8744fa17cdb490b70f35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceSetIO-request>)))
  "Returns full string definition for message of type '<UrServiceSetIO-request>"
  (cl:format cl:nil "~%int8 pin~%~%~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceSetIO-request)))
  "Returns full string definition for message of type 'UrServiceSetIO-request"
  (cl:format cl:nil "~%int8 pin~%~%~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceSetIO-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceSetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceSetIO-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude UrServiceSetIO-response.msg.html

(cl:defclass <UrServiceSetIO-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceSetIO-response (<UrServiceSetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceSetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceSetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceSetIO-response> is deprecated: use caros_universalrobot-srv:UrServiceSetIO-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceSetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceSetIO-response>) ostream)
  "Serializes a message object of type '<UrServiceSetIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceSetIO-response>) istream)
  "Deserializes a message object of type '<UrServiceSetIO-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceSetIO-response>)))
  "Returns string type for a service object of type '<UrServiceSetIO-response>"
  "caros_universalrobot/UrServiceSetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceSetIO-response)))
  "Returns string type for a service object of type 'UrServiceSetIO-response"
  "caros_universalrobot/UrServiceSetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceSetIO-response>)))
  "Returns md5sum for a message object of type '<UrServiceSetIO-response>"
  "42b22819bd3f8744fa17cdb490b70f35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceSetIO-response)))
  "Returns md5sum for a message object of type 'UrServiceSetIO-response"
  "42b22819bd3f8744fa17cdb490b70f35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceSetIO-response>)))
  "Returns full string definition for message of type '<UrServiceSetIO-response>"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceSetIO-response)))
  "Returns full string definition for message of type 'UrServiceSetIO-response"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceSetIO-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceSetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceSetIO-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceSetIO)))
  'UrServiceSetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceSetIO)))
  'UrServiceSetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceSetIO)))
  "Returns string type for a service object of type '<UrServiceSetIO>"
  "caros_universalrobot/UrServiceSetIO")
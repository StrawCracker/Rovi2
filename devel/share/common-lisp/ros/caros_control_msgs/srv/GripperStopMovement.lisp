; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude GripperStopMovement-request.msg.html

(cl:defclass <GripperStopMovement-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GripperStopMovement-request (<GripperStopMovement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperStopMovement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperStopMovement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperStopMovement-request> is deprecated: use caros_control_msgs-srv:GripperStopMovement-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperStopMovement-request>) ostream)
  "Serializes a message object of type '<GripperStopMovement-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperStopMovement-request>) istream)
  "Deserializes a message object of type '<GripperStopMovement-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperStopMovement-request>)))
  "Returns string type for a service object of type '<GripperStopMovement-request>"
  "caros_control_msgs/GripperStopMovementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperStopMovement-request)))
  "Returns string type for a service object of type 'GripperStopMovement-request"
  "caros_control_msgs/GripperStopMovementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperStopMovement-request>)))
  "Returns md5sum for a message object of type '<GripperStopMovement-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperStopMovement-request)))
  "Returns md5sum for a message object of type 'GripperStopMovement-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperStopMovement-request>)))
  "Returns full string definition for message of type '<GripperStopMovement-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperStopMovement-request)))
  "Returns full string definition for message of type 'GripperStopMovement-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperStopMovement-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperStopMovement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperStopMovement-request
))
;//! \htmlinclude GripperStopMovement-response.msg.html

(cl:defclass <GripperStopMovement-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperStopMovement-response (<GripperStopMovement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperStopMovement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperStopMovement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperStopMovement-response> is deprecated: use caros_control_msgs-srv:GripperStopMovement-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperStopMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperStopMovement-response>) ostream)
  "Serializes a message object of type '<GripperStopMovement-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperStopMovement-response>) istream)
  "Deserializes a message object of type '<GripperStopMovement-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperStopMovement-response>)))
  "Returns string type for a service object of type '<GripperStopMovement-response>"
  "caros_control_msgs/GripperStopMovementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperStopMovement-response)))
  "Returns string type for a service object of type 'GripperStopMovement-response"
  "caros_control_msgs/GripperStopMovementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperStopMovement-response>)))
  "Returns md5sum for a message object of type '<GripperStopMovement-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperStopMovement-response)))
  "Returns md5sum for a message object of type 'GripperStopMovement-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperStopMovement-response>)))
  "Returns full string definition for message of type '<GripperStopMovement-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperStopMovement-response)))
  "Returns full string definition for message of type 'GripperStopMovement-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperStopMovement-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperStopMovement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperStopMovement-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperStopMovement)))
  'GripperStopMovement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperStopMovement)))
  'GripperStopMovement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperStopMovement)))
  "Returns string type for a service object of type '<GripperStopMovement>"
  "caros_control_msgs/GripperStopMovement")
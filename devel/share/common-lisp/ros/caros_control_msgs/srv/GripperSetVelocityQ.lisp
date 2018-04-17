; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude GripperSetVelocityQ-request.msg.html

(cl:defclass <GripperSetVelocityQ-request> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass GripperSetVelocityQ-request (<GripperSetVelocityQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperSetVelocityQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperSetVelocityQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperSetVelocityQ-request> is deprecated: use caros_control_msgs-srv:GripperSetVelocityQ-request instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GripperSetVelocityQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:velocity-val is deprecated.  Use caros_control_msgs-srv:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperSetVelocityQ-request>) ostream)
  "Serializes a message object of type '<GripperSetVelocityQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperSetVelocityQ-request>) istream)
  "Deserializes a message object of type '<GripperSetVelocityQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperSetVelocityQ-request>)))
  "Returns string type for a service object of type '<GripperSetVelocityQ-request>"
  "caros_control_msgs/GripperSetVelocityQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetVelocityQ-request)))
  "Returns string type for a service object of type 'GripperSetVelocityQ-request"
  "caros_control_msgs/GripperSetVelocityQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperSetVelocityQ-request>)))
  "Returns md5sum for a message object of type '<GripperSetVelocityQ-request>"
  "6364873f803d54771b419bcf1075611d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperSetVelocityQ-request)))
  "Returns md5sum for a message object of type 'GripperSetVelocityQ-request"
  "6364873f803d54771b419bcf1075611d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperSetVelocityQ-request>)))
  "Returns full string definition for message of type '<GripperSetVelocityQ-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q velocity~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperSetVelocityQ-request)))
  "Returns full string definition for message of type 'GripperSetVelocityQ-request"
  (cl:format cl:nil "~%caros_common_msgs/Q velocity~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperSetVelocityQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperSetVelocityQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperSetVelocityQ-request
    (cl:cons ':velocity (velocity msg))
))
;//! \htmlinclude GripperSetVelocityQ-response.msg.html

(cl:defclass <GripperSetVelocityQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperSetVelocityQ-response (<GripperSetVelocityQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperSetVelocityQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperSetVelocityQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperSetVelocityQ-response> is deprecated: use caros_control_msgs-srv:GripperSetVelocityQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperSetVelocityQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperSetVelocityQ-response>) ostream)
  "Serializes a message object of type '<GripperSetVelocityQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperSetVelocityQ-response>) istream)
  "Deserializes a message object of type '<GripperSetVelocityQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperSetVelocityQ-response>)))
  "Returns string type for a service object of type '<GripperSetVelocityQ-response>"
  "caros_control_msgs/GripperSetVelocityQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetVelocityQ-response)))
  "Returns string type for a service object of type 'GripperSetVelocityQ-response"
  "caros_control_msgs/GripperSetVelocityQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperSetVelocityQ-response>)))
  "Returns md5sum for a message object of type '<GripperSetVelocityQ-response>"
  "6364873f803d54771b419bcf1075611d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperSetVelocityQ-response)))
  "Returns md5sum for a message object of type 'GripperSetVelocityQ-response"
  "6364873f803d54771b419bcf1075611d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperSetVelocityQ-response>)))
  "Returns full string definition for message of type '<GripperSetVelocityQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperSetVelocityQ-response)))
  "Returns full string definition for message of type 'GripperSetVelocityQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperSetVelocityQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperSetVelocityQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperSetVelocityQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperSetVelocityQ)))
  'GripperSetVelocityQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperSetVelocityQ)))
  'GripperSetVelocityQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetVelocityQ)))
  "Returns string type for a service object of type '<GripperSetVelocityQ>"
  "caros_control_msgs/GripperSetVelocityQ")
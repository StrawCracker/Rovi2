; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude GripperSetForceQ-request.msg.html

(cl:defclass <GripperSetForceQ-request> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass GripperSetForceQ-request (<GripperSetForceQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperSetForceQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperSetForceQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperSetForceQ-request> is deprecated: use caros_control_msgs-srv:GripperSetForceQ-request instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperSetForceQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:force-val is deprecated.  Use caros_control_msgs-srv:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperSetForceQ-request>) ostream)
  "Serializes a message object of type '<GripperSetForceQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperSetForceQ-request>) istream)
  "Deserializes a message object of type '<GripperSetForceQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperSetForceQ-request>)))
  "Returns string type for a service object of type '<GripperSetForceQ-request>"
  "caros_control_msgs/GripperSetForceQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetForceQ-request)))
  "Returns string type for a service object of type 'GripperSetForceQ-request"
  "caros_control_msgs/GripperSetForceQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperSetForceQ-request>)))
  "Returns md5sum for a message object of type '<GripperSetForceQ-request>"
  "feae1a2d3a448335d59915dd351d018c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperSetForceQ-request)))
  "Returns md5sum for a message object of type 'GripperSetForceQ-request"
  "feae1a2d3a448335d59915dd351d018c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperSetForceQ-request>)))
  "Returns full string definition for message of type '<GripperSetForceQ-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q force~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperSetForceQ-request)))
  "Returns full string definition for message of type 'GripperSetForceQ-request"
  (cl:format cl:nil "~%caros_common_msgs/Q force~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperSetForceQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperSetForceQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperSetForceQ-request
    (cl:cons ':force (force msg))
))
;//! \htmlinclude GripperSetForceQ-response.msg.html

(cl:defclass <GripperSetForceQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperSetForceQ-response (<GripperSetForceQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperSetForceQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperSetForceQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperSetForceQ-response> is deprecated: use caros_control_msgs-srv:GripperSetForceQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperSetForceQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperSetForceQ-response>) ostream)
  "Serializes a message object of type '<GripperSetForceQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperSetForceQ-response>) istream)
  "Deserializes a message object of type '<GripperSetForceQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperSetForceQ-response>)))
  "Returns string type for a service object of type '<GripperSetForceQ-response>"
  "caros_control_msgs/GripperSetForceQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetForceQ-response)))
  "Returns string type for a service object of type 'GripperSetForceQ-response"
  "caros_control_msgs/GripperSetForceQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperSetForceQ-response>)))
  "Returns md5sum for a message object of type '<GripperSetForceQ-response>"
  "feae1a2d3a448335d59915dd351d018c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperSetForceQ-response)))
  "Returns md5sum for a message object of type 'GripperSetForceQ-response"
  "feae1a2d3a448335d59915dd351d018c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperSetForceQ-response>)))
  "Returns full string definition for message of type '<GripperSetForceQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperSetForceQ-response)))
  "Returns full string definition for message of type 'GripperSetForceQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperSetForceQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperSetForceQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperSetForceQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperSetForceQ)))
  'GripperSetForceQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperSetForceQ)))
  'GripperSetForceQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperSetForceQ)))
  "Returns string type for a service object of type '<GripperSetForceQ>"
  "caros_control_msgs/GripperSetForceQ")
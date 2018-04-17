; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude GripperMoveQ-request.msg.html

(cl:defclass <GripperMoveQ-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass GripperMoveQ-request (<GripperMoveQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperMoveQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperMoveQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperMoveQ-request> is deprecated: use caros_control_msgs-srv:GripperMoveQ-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GripperMoveQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:q-val is deprecated.  Use caros_control_msgs-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperMoveQ-request>) ostream)
  "Serializes a message object of type '<GripperMoveQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperMoveQ-request>) istream)
  "Deserializes a message object of type '<GripperMoveQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperMoveQ-request>)))
  "Returns string type for a service object of type '<GripperMoveQ-request>"
  "caros_control_msgs/GripperMoveQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperMoveQ-request)))
  "Returns string type for a service object of type 'GripperMoveQ-request"
  "caros_control_msgs/GripperMoveQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperMoveQ-request>)))
  "Returns md5sum for a message object of type '<GripperMoveQ-request>"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperMoveQ-request)))
  "Returns md5sum for a message object of type 'GripperMoveQ-request"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperMoveQ-request>)))
  "Returns full string definition for message of type '<GripperMoveQ-request>"
  (cl:format cl:nil "~%~%caros_common_msgs/Q q~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperMoveQ-request)))
  "Returns full string definition for message of type 'GripperMoveQ-request"
  (cl:format cl:nil "~%~%caros_common_msgs/Q q~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperMoveQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperMoveQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperMoveQ-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude GripperMoveQ-response.msg.html

(cl:defclass <GripperMoveQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperMoveQ-response (<GripperMoveQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperMoveQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperMoveQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperMoveQ-response> is deprecated: use caros_control_msgs-srv:GripperMoveQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperMoveQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperMoveQ-response>) ostream)
  "Serializes a message object of type '<GripperMoveQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperMoveQ-response>) istream)
  "Deserializes a message object of type '<GripperMoveQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperMoveQ-response>)))
  "Returns string type for a service object of type '<GripperMoveQ-response>"
  "caros_control_msgs/GripperMoveQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperMoveQ-response)))
  "Returns string type for a service object of type 'GripperMoveQ-response"
  "caros_control_msgs/GripperMoveQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperMoveQ-response>)))
  "Returns md5sum for a message object of type '<GripperMoveQ-response>"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperMoveQ-response)))
  "Returns md5sum for a message object of type 'GripperMoveQ-response"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperMoveQ-response>)))
  "Returns full string definition for message of type '<GripperMoveQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperMoveQ-response)))
  "Returns full string definition for message of type 'GripperMoveQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperMoveQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperMoveQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperMoveQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperMoveQ)))
  'GripperMoveQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperMoveQ)))
  'GripperMoveQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperMoveQ)))
  "Returns string type for a service object of type '<GripperMoveQ>"
  "caros_control_msgs/GripperMoveQ")
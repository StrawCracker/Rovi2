; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude GripperGripQ-request.msg.html

(cl:defclass <GripperGripQ-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass GripperGripQ-request (<GripperGripQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperGripQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperGripQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperGripQ-request> is deprecated: use caros_control_msgs-srv:GripperGripQ-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GripperGripQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:q-val is deprecated.  Use caros_control_msgs-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperGripQ-request>) ostream)
  "Serializes a message object of type '<GripperGripQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperGripQ-request>) istream)
  "Deserializes a message object of type '<GripperGripQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperGripQ-request>)))
  "Returns string type for a service object of type '<GripperGripQ-request>"
  "caros_control_msgs/GripperGripQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperGripQ-request)))
  "Returns string type for a service object of type 'GripperGripQ-request"
  "caros_control_msgs/GripperGripQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperGripQ-request>)))
  "Returns md5sum for a message object of type '<GripperGripQ-request>"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperGripQ-request)))
  "Returns md5sum for a message object of type 'GripperGripQ-request"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperGripQ-request>)))
  "Returns full string definition for message of type '<GripperGripQ-request>"
  (cl:format cl:nil "~%~%caros_common_msgs/Q q~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperGripQ-request)))
  "Returns full string definition for message of type 'GripperGripQ-request"
  (cl:format cl:nil "~%~%caros_common_msgs/Q q~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperGripQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperGripQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperGripQ-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude GripperGripQ-response.msg.html

(cl:defclass <GripperGripQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperGripQ-response (<GripperGripQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperGripQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperGripQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<GripperGripQ-response> is deprecated: use caros_control_msgs-srv:GripperGripQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperGripQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperGripQ-response>) ostream)
  "Serializes a message object of type '<GripperGripQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperGripQ-response>) istream)
  "Deserializes a message object of type '<GripperGripQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperGripQ-response>)))
  "Returns string type for a service object of type '<GripperGripQ-response>"
  "caros_control_msgs/GripperGripQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperGripQ-response)))
  "Returns string type for a service object of type 'GripperGripQ-response"
  "caros_control_msgs/GripperGripQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperGripQ-response>)))
  "Returns md5sum for a message object of type '<GripperGripQ-response>"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperGripQ-response)))
  "Returns md5sum for a message object of type 'GripperGripQ-response"
  "d23b32153f93e9b4d774b55a7d161889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperGripQ-response>)))
  "Returns full string definition for message of type '<GripperGripQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperGripQ-response)))
  "Returns full string definition for message of type 'GripperGripQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperGripQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperGripQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperGripQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperGripQ)))
  'GripperGripQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperGripQ)))
  'GripperGripQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperGripQ)))
  "Returns string type for a service object of type '<GripperGripQ>"
  "caros_control_msgs/GripperGripQ")
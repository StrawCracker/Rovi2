; Auto-generated. Do not edit!


(cl:in-package caros_common_robwork_msgs-srv)


;//! \htmlinclude GetRwState-request.msg.html

(cl:defclass <GetRwState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRwState-request (<GetRwState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRwState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRwState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_robwork_msgs-srv:<GetRwState-request> is deprecated: use caros_common_robwork_msgs-srv:GetRwState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRwState-request>) ostream)
  "Serializes a message object of type '<GetRwState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRwState-request>) istream)
  "Deserializes a message object of type '<GetRwState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRwState-request>)))
  "Returns string type for a service object of type '<GetRwState-request>"
  "caros_common_robwork_msgs/GetRwStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRwState-request)))
  "Returns string type for a service object of type 'GetRwState-request"
  "caros_common_robwork_msgs/GetRwStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRwState-request>)))
  "Returns md5sum for a message object of type '<GetRwState-request>"
  "ec5f59bcd9871c158266b6d4f91ec6c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRwState-request)))
  "Returns md5sum for a message object of type 'GetRwState-request"
  "ec5f59bcd9871c158266b6d4f91ec6c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRwState-request>)))
  "Returns full string definition for message of type '<GetRwState-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRwState-request)))
  "Returns full string definition for message of type 'GetRwState-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRwState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRwState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRwState-request
))
;//! \htmlinclude GetRwState-response.msg.html

(cl:defclass <GetRwState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type caros_common_robwork_msgs-msg:RwState
    :initform (cl:make-instance 'caros_common_robwork_msgs-msg:RwState)))
)

(cl:defclass GetRwState-response (<GetRwState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRwState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRwState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_robwork_msgs-srv:<GetRwState-response> is deprecated: use caros_common_robwork_msgs-srv:GetRwState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetRwState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_robwork_msgs-srv:state-val is deprecated.  Use caros_common_robwork_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRwState-response>) ostream)
  "Serializes a message object of type '<GetRwState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRwState-response>) istream)
  "Deserializes a message object of type '<GetRwState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRwState-response>)))
  "Returns string type for a service object of type '<GetRwState-response>"
  "caros_common_robwork_msgs/GetRwStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRwState-response)))
  "Returns string type for a service object of type 'GetRwState-response"
  "caros_common_robwork_msgs/GetRwStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRwState-response>)))
  "Returns md5sum for a message object of type '<GetRwState-response>"
  "ec5f59bcd9871c158266b6d4f91ec6c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRwState-response)))
  "Returns md5sum for a message object of type 'GetRwState-response"
  "ec5f59bcd9871c158266b6d4f91ec6c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRwState-response>)))
  "Returns full string definition for message of type '<GetRwState-response>"
  (cl:format cl:nil "~%caros_common_robwork_msgs/RwState state~%~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwState~%# Serialization of RobWork state~%caros_common_robwork_msgs/RwStateData[] state_data~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwStateData~%# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRwState-response)))
  "Returns full string definition for message of type 'GetRwState-response"
  (cl:format cl:nil "~%caros_common_robwork_msgs/RwState state~%~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwState~%# Serialization of RobWork state~%caros_common_robwork_msgs/RwStateData[] state_data~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwStateData~%# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRwState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRwState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRwState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRwState)))
  'GetRwState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRwState)))
  'GetRwState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRwState)))
  "Returns string type for a service object of type '<GetRwState>"
  "caros_common_robwork_msgs/GetRwState")
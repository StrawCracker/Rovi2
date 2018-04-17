; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceMoveVelQ-request.msg.html

(cl:defclass <SerialDeviceMoveVelQ-request> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type caros_common_msgs-msg:Q
    :initform (cl:make-instance 'caros_common_msgs-msg:Q)))
)

(cl:defclass SerialDeviceMoveVelQ-request (<SerialDeviceMoveVelQ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveVelQ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveVelQ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveVelQ-request> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveVelQ-request instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <SerialDeviceMoveVelQ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:vel-val is deprecated.  Use caros_control_msgs-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveVelQ-request>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveVelQ-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveVelQ-request>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveVelQ-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveVelQ-request>)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelQ-request>"
  "caros_control_msgs/SerialDeviceMoveVelQRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelQ-request)))
  "Returns string type for a service object of type 'SerialDeviceMoveVelQ-request"
  "caros_control_msgs/SerialDeviceMoveVelQRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveVelQ-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveVelQ-request>"
  "e405cc67ad2f49de8c759f388d4bac88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveVelQ-request)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveVelQ-request"
  "e405cc67ad2f49de8c759f388d4bac88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveVelQ-request>)))
  "Returns full string definition for message of type '<SerialDeviceMoveVelQ-request>"
  (cl:format cl:nil "~%caros_common_msgs/Q vel~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveVelQ-request)))
  "Returns full string definition for message of type 'SerialDeviceMoveVelQ-request"
  (cl:format cl:nil "~%caros_common_msgs/Q vel~%~%~%================================================================================~%MSG: caros_common_msgs/Q~%# A configuration Q~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveVelQ-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveVelQ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveVelQ-request
    (cl:cons ':vel (vel msg))
))
;//! \htmlinclude SerialDeviceMoveVelQ-response.msg.html

(cl:defclass <SerialDeviceMoveVelQ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceMoveVelQ-response (<SerialDeviceMoveVelQ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveVelQ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveVelQ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveVelQ-response> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveVelQ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceMoveVelQ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveVelQ-response>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveVelQ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveVelQ-response>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveVelQ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveVelQ-response>)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelQ-response>"
  "caros_control_msgs/SerialDeviceMoveVelQResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelQ-response)))
  "Returns string type for a service object of type 'SerialDeviceMoveVelQ-response"
  "caros_control_msgs/SerialDeviceMoveVelQResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveVelQ-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveVelQ-response>"
  "e405cc67ad2f49de8c759f388d4bac88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveVelQ-response)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveVelQ-response"
  "e405cc67ad2f49de8c759f388d4bac88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveVelQ-response>)))
  "Returns full string definition for message of type '<SerialDeviceMoveVelQ-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveVelQ-response)))
  "Returns full string definition for message of type 'SerialDeviceMoveVelQ-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveVelQ-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveVelQ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveVelQ-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceMoveVelQ)))
  'SerialDeviceMoveVelQ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceMoveVelQ)))
  'SerialDeviceMoveVelQ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelQ)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelQ>"
  "caros_control_msgs/SerialDeviceMoveVelQ")
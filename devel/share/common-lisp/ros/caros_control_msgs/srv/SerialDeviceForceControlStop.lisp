; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceForceControlStop-request.msg.html

(cl:defclass <SerialDeviceForceControlStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SerialDeviceForceControlStop-request (<SerialDeviceForceControlStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceForceControlStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceForceControlStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceForceControlStop-request> is deprecated: use caros_control_msgs-srv:SerialDeviceForceControlStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceForceControlStop-request>) ostream)
  "Serializes a message object of type '<SerialDeviceForceControlStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceForceControlStop-request>) istream)
  "Deserializes a message object of type '<SerialDeviceForceControlStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceForceControlStop-request>)))
  "Returns string type for a service object of type '<SerialDeviceForceControlStop-request>"
  "caros_control_msgs/SerialDeviceForceControlStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlStop-request)))
  "Returns string type for a service object of type 'SerialDeviceForceControlStop-request"
  "caros_control_msgs/SerialDeviceForceControlStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceForceControlStop-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceForceControlStop-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceForceControlStop-request)))
  "Returns md5sum for a message object of type 'SerialDeviceForceControlStop-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceForceControlStop-request>)))
  "Returns full string definition for message of type '<SerialDeviceForceControlStop-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceForceControlStop-request)))
  "Returns full string definition for message of type 'SerialDeviceForceControlStop-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceForceControlStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceForceControlStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceForceControlStop-request
))
;//! \htmlinclude SerialDeviceForceControlStop-response.msg.html

(cl:defclass <SerialDeviceForceControlStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceForceControlStop-response (<SerialDeviceForceControlStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceForceControlStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceForceControlStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceForceControlStop-response> is deprecated: use caros_control_msgs-srv:SerialDeviceForceControlStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceForceControlStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceForceControlStop-response>) ostream)
  "Serializes a message object of type '<SerialDeviceForceControlStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceForceControlStop-response>) istream)
  "Deserializes a message object of type '<SerialDeviceForceControlStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceForceControlStop-response>)))
  "Returns string type for a service object of type '<SerialDeviceForceControlStop-response>"
  "caros_control_msgs/SerialDeviceForceControlStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlStop-response)))
  "Returns string type for a service object of type 'SerialDeviceForceControlStop-response"
  "caros_control_msgs/SerialDeviceForceControlStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceForceControlStop-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceForceControlStop-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceForceControlStop-response)))
  "Returns md5sum for a message object of type 'SerialDeviceForceControlStop-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceForceControlStop-response>)))
  "Returns full string definition for message of type '<SerialDeviceForceControlStop-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceForceControlStop-response)))
  "Returns full string definition for message of type 'SerialDeviceForceControlStop-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceForceControlStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceForceControlStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceForceControlStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceForceControlStop)))
  'SerialDeviceForceControlStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceForceControlStop)))
  'SerialDeviceForceControlStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlStop)))
  "Returns string type for a service object of type '<SerialDeviceForceControlStop>"
  "caros_control_msgs/SerialDeviceForceControlStop")
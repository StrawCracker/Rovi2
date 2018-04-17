; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceMoveVelT-request.msg.html

(cl:defclass <SerialDeviceMoveVelT-request> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass SerialDeviceMoveVelT-request (<SerialDeviceMoveVelT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveVelT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveVelT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveVelT-request> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveVelT-request instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <SerialDeviceMoveVelT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:vel-val is deprecated.  Use caros_control_msgs-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveVelT-request>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveVelT-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveVelT-request>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveVelT-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveVelT-request>)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelT-request>"
  "caros_control_msgs/SerialDeviceMoveVelTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelT-request)))
  "Returns string type for a service object of type 'SerialDeviceMoveVelT-request"
  "caros_control_msgs/SerialDeviceMoveVelTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveVelT-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveVelT-request>"
  "82ef1143126410b5082ced32f5c883a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveVelT-request)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveVelT-request"
  "82ef1143126410b5082ced32f5c883a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveVelT-request>)))
  "Returns full string definition for message of type '<SerialDeviceMoveVelT-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/Twist vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveVelT-request)))
  "Returns full string definition for message of type 'SerialDeviceMoveVelT-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/Twist vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveVelT-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveVelT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveVelT-request
    (cl:cons ':vel (vel msg))
))
;//! \htmlinclude SerialDeviceMoveVelT-response.msg.html

(cl:defclass <SerialDeviceMoveVelT-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceMoveVelT-response (<SerialDeviceMoveVelT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMoveVelT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMoveVelT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMoveVelT-response> is deprecated: use caros_control_msgs-srv:SerialDeviceMoveVelT-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceMoveVelT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMoveVelT-response>) ostream)
  "Serializes a message object of type '<SerialDeviceMoveVelT-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMoveVelT-response>) istream)
  "Deserializes a message object of type '<SerialDeviceMoveVelT-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMoveVelT-response>)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelT-response>"
  "caros_control_msgs/SerialDeviceMoveVelTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelT-response)))
  "Returns string type for a service object of type 'SerialDeviceMoveVelT-response"
  "caros_control_msgs/SerialDeviceMoveVelTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMoveVelT-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceMoveVelT-response>"
  "82ef1143126410b5082ced32f5c883a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMoveVelT-response)))
  "Returns md5sum for a message object of type 'SerialDeviceMoveVelT-response"
  "82ef1143126410b5082ced32f5c883a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMoveVelT-response>)))
  "Returns full string definition for message of type '<SerialDeviceMoveVelT-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMoveVelT-response)))
  "Returns full string definition for message of type 'SerialDeviceMoveVelT-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMoveVelT-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMoveVelT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMoveVelT-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceMoveVelT)))
  'SerialDeviceMoveVelT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceMoveVelT)))
  'SerialDeviceMoveVelT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMoveVelT)))
  "Returns string type for a service object of type '<SerialDeviceMoveVelT>"
  "caros_control_msgs/SerialDeviceMoveVelT")
; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceForceControlUpdate-request.msg.html

(cl:defclass <SerialDeviceForceControlUpdate-request> (roslisp-msg-protocol:ros-message)
  ((wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench)))
)

(cl:defclass SerialDeviceForceControlUpdate-request (<SerialDeviceForceControlUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceForceControlUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceForceControlUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceForceControlUpdate-request> is deprecated: use caros_control_msgs-srv:SerialDeviceForceControlUpdate-request instead.")))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <SerialDeviceForceControlUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:wrench-val is deprecated.  Use caros_control_msgs-srv:wrench instead.")
  (wrench m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceForceControlUpdate-request>) ostream)
  "Serializes a message object of type '<SerialDeviceForceControlUpdate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceForceControlUpdate-request>) istream)
  "Deserializes a message object of type '<SerialDeviceForceControlUpdate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceForceControlUpdate-request>)))
  "Returns string type for a service object of type '<SerialDeviceForceControlUpdate-request>"
  "caros_control_msgs/SerialDeviceForceControlUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlUpdate-request)))
  "Returns string type for a service object of type 'SerialDeviceForceControlUpdate-request"
  "caros_control_msgs/SerialDeviceForceControlUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceForceControlUpdate-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceForceControlUpdate-request>"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceForceControlUpdate-request)))
  "Returns md5sum for a message object of type 'SerialDeviceForceControlUpdate-request"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceForceControlUpdate-request>)))
  "Returns full string definition for message of type '<SerialDeviceForceControlUpdate-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/Wrench wrench~%~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceForceControlUpdate-request)))
  "Returns full string definition for message of type 'SerialDeviceForceControlUpdate-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/Wrench wrench~%~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceForceControlUpdate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceForceControlUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceForceControlUpdate-request
    (cl:cons ':wrench (wrench msg))
))
;//! \htmlinclude SerialDeviceForceControlUpdate-response.msg.html

(cl:defclass <SerialDeviceForceControlUpdate-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceForceControlUpdate-response (<SerialDeviceForceControlUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceForceControlUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceForceControlUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceForceControlUpdate-response> is deprecated: use caros_control_msgs-srv:SerialDeviceForceControlUpdate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceForceControlUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceForceControlUpdate-response>) ostream)
  "Serializes a message object of type '<SerialDeviceForceControlUpdate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceForceControlUpdate-response>) istream)
  "Deserializes a message object of type '<SerialDeviceForceControlUpdate-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceForceControlUpdate-response>)))
  "Returns string type for a service object of type '<SerialDeviceForceControlUpdate-response>"
  "caros_control_msgs/SerialDeviceForceControlUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlUpdate-response)))
  "Returns string type for a service object of type 'SerialDeviceForceControlUpdate-response"
  "caros_control_msgs/SerialDeviceForceControlUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceForceControlUpdate-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceForceControlUpdate-response>"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceForceControlUpdate-response)))
  "Returns md5sum for a message object of type 'SerialDeviceForceControlUpdate-response"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceForceControlUpdate-response>)))
  "Returns full string definition for message of type '<SerialDeviceForceControlUpdate-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceForceControlUpdate-response)))
  "Returns full string definition for message of type 'SerialDeviceForceControlUpdate-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceForceControlUpdate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceForceControlUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceForceControlUpdate-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceForceControlUpdate)))
  'SerialDeviceForceControlUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceForceControlUpdate)))
  'SerialDeviceForceControlUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceForceControlUpdate)))
  "Returns string type for a service object of type '<SerialDeviceForceControlUpdate>"
  "caros_control_msgs/SerialDeviceForceControlUpdate")
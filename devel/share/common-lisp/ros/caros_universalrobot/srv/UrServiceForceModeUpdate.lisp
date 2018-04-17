; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceForceModeUpdate-request.msg.html

(cl:defclass <UrServiceForceModeUpdate-request> (roslisp-msg-protocol:ros-message)
  ((wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench)))
)

(cl:defclass UrServiceForceModeUpdate-request (<UrServiceForceModeUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeUpdate-request> is deprecated: use caros_universalrobot-srv:UrServiceForceModeUpdate-request instead.")))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <UrServiceForceModeUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:wrench-val is deprecated.  Use caros_universalrobot-srv:wrench instead.")
  (wrench m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeUpdate-request>) ostream)
  "Serializes a message object of type '<UrServiceForceModeUpdate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeUpdate-request>) istream)
  "Deserializes a message object of type '<UrServiceForceModeUpdate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeUpdate-request>)))
  "Returns string type for a service object of type '<UrServiceForceModeUpdate-request>"
  "caros_universalrobot/UrServiceForceModeUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeUpdate-request)))
  "Returns string type for a service object of type 'UrServiceForceModeUpdate-request"
  "caros_universalrobot/UrServiceForceModeUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeUpdate-request>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeUpdate-request>"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeUpdate-request)))
  "Returns md5sum for a message object of type 'UrServiceForceModeUpdate-request"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeUpdate-request>)))
  "Returns full string definition for message of type '<UrServiceForceModeUpdate-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/Wrench wrench~%~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeUpdate-request)))
  "Returns full string definition for message of type 'UrServiceForceModeUpdate-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/Wrench wrench~%~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeUpdate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeUpdate-request
    (cl:cons ':wrench (wrench msg))
))
;//! \htmlinclude UrServiceForceModeUpdate-response.msg.html

(cl:defclass <UrServiceForceModeUpdate-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceForceModeUpdate-response (<UrServiceForceModeUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeUpdate-response> is deprecated: use caros_universalrobot-srv:UrServiceForceModeUpdate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceForceModeUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeUpdate-response>) ostream)
  "Serializes a message object of type '<UrServiceForceModeUpdate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeUpdate-response>) istream)
  "Deserializes a message object of type '<UrServiceForceModeUpdate-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeUpdate-response>)))
  "Returns string type for a service object of type '<UrServiceForceModeUpdate-response>"
  "caros_universalrobot/UrServiceForceModeUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeUpdate-response)))
  "Returns string type for a service object of type 'UrServiceForceModeUpdate-response"
  "caros_universalrobot/UrServiceForceModeUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeUpdate-response>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeUpdate-response>"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeUpdate-response)))
  "Returns md5sum for a message object of type 'UrServiceForceModeUpdate-response"
  "30313040926e96225efb955b34d4bf7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeUpdate-response>)))
  "Returns full string definition for message of type '<UrServiceForceModeUpdate-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeUpdate-response)))
  "Returns full string definition for message of type 'UrServiceForceModeUpdate-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeUpdate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeUpdate-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceForceModeUpdate)))
  'UrServiceForceModeUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceForceModeUpdate)))
  'UrServiceForceModeUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeUpdate)))
  "Returns string type for a service object of type '<UrServiceForceModeUpdate>"
  "caros_universalrobot/UrServiceForceModeUpdate")
; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceServoT-request.msg.html

(cl:defclass <UrServiceServoT-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass UrServiceServoT-request (<UrServiceServoT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceServoT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceServoT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceServoT-request> is deprecated: use caros_universalrobot-srv:UrServiceServoT-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <UrServiceServoT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:target-val is deprecated.  Use caros_universalrobot-srv:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceServoT-request>) ostream)
  "Serializes a message object of type '<UrServiceServoT-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceServoT-request>) istream)
  "Deserializes a message object of type '<UrServiceServoT-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceServoT-request>)))
  "Returns string type for a service object of type '<UrServiceServoT-request>"
  "caros_universalrobot/UrServiceServoTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoT-request)))
  "Returns string type for a service object of type 'UrServiceServoT-request"
  "caros_universalrobot/UrServiceServoTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceServoT-request>)))
  "Returns md5sum for a message object of type '<UrServiceServoT-request>"
  "7909a8d932441c3aea2cba0b34f38609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceServoT-request)))
  "Returns md5sum for a message object of type 'UrServiceServoT-request"
  "7909a8d932441c3aea2cba0b34f38609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceServoT-request>)))
  "Returns full string definition for message of type '<UrServiceServoT-request>"
  (cl:format cl:nil "~%geometry_msgs/Transform target~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceServoT-request)))
  "Returns full string definition for message of type 'UrServiceServoT-request"
  (cl:format cl:nil "~%geometry_msgs/Transform target~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceServoT-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceServoT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceServoT-request
    (cl:cons ':target (target msg))
))
;//! \htmlinclude UrServiceServoT-response.msg.html

(cl:defclass <UrServiceServoT-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceServoT-response (<UrServiceServoT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceServoT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceServoT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceServoT-response> is deprecated: use caros_universalrobot-srv:UrServiceServoT-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceServoT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceServoT-response>) ostream)
  "Serializes a message object of type '<UrServiceServoT-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceServoT-response>) istream)
  "Deserializes a message object of type '<UrServiceServoT-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceServoT-response>)))
  "Returns string type for a service object of type '<UrServiceServoT-response>"
  "caros_universalrobot/UrServiceServoTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoT-response)))
  "Returns string type for a service object of type 'UrServiceServoT-response"
  "caros_universalrobot/UrServiceServoTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceServoT-response>)))
  "Returns md5sum for a message object of type '<UrServiceServoT-response>"
  "7909a8d932441c3aea2cba0b34f38609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceServoT-response)))
  "Returns md5sum for a message object of type 'UrServiceServoT-response"
  "7909a8d932441c3aea2cba0b34f38609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceServoT-response>)))
  "Returns full string definition for message of type '<UrServiceServoT-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceServoT-response)))
  "Returns full string definition for message of type 'UrServiceServoT-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceServoT-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceServoT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceServoT-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceServoT)))
  'UrServiceServoT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceServoT)))
  'UrServiceServoT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceServoT)))
  "Returns string type for a service object of type '<UrServiceServoT>"
  "caros_universalrobot/UrServiceServoT")
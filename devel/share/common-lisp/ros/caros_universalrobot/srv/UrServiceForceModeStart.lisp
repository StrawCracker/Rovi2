; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServiceForceModeStart-request.msg.html

(cl:defclass <UrServiceForceModeStart-request> (roslisp-msg-protocol:ros-message)
  ((base2forceFrame
    :reader base2forceFrame
    :initarg :base2forceFrame
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (selection
    :reader selection
    :initarg :selection
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (limits
    :reader limits
    :initarg :limits
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UrServiceForceModeStart-request (<UrServiceForceModeStart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeStart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeStart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeStart-request> is deprecated: use caros_universalrobot-srv:UrServiceForceModeStart-request instead.")))

(cl:ensure-generic-function 'base2forceFrame-val :lambda-list '(m))
(cl:defmethod base2forceFrame-val ((m <UrServiceForceModeStart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:base2forceFrame-val is deprecated.  Use caros_universalrobot-srv:base2forceFrame instead.")
  (base2forceFrame m))

(cl:ensure-generic-function 'selection-val :lambda-list '(m))
(cl:defmethod selection-val ((m <UrServiceForceModeStart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:selection-val is deprecated.  Use caros_universalrobot-srv:selection instead.")
  (selection m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <UrServiceForceModeStart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:wrench-val is deprecated.  Use caros_universalrobot-srv:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'limits-val :lambda-list '(m))
(cl:defmethod limits-val ((m <UrServiceForceModeStart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:limits-val is deprecated.  Use caros_universalrobot-srv:limits instead.")
  (limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeStart-request>) ostream)
  "Serializes a message object of type '<UrServiceForceModeStart-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base2forceFrame) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'selection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'selection))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeStart-request>) istream)
  "Deserializes a message object of type '<UrServiceForceModeStart-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base2forceFrame) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'selection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'selection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeStart-request>)))
  "Returns string type for a service object of type '<UrServiceForceModeStart-request>"
  "caros_universalrobot/UrServiceForceModeStartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStart-request)))
  "Returns string type for a service object of type 'UrServiceForceModeStart-request"
  "caros_universalrobot/UrServiceForceModeStartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeStart-request>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeStart-request>"
  "17f1800eba3c421c9cb128cbf7d53ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeStart-request)))
  "Returns md5sum for a message object of type 'UrServiceForceModeStart-request"
  "17f1800eba3c421c9cb128cbf7d53ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeStart-request>)))
  "Returns full string definition for message of type '<UrServiceForceModeStart-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/Transform base2forceFrame~%~%~%uint32[] selection~%~%~%geometry_msgs/Wrench wrench~%~%~%float32[] limits~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeStart-request)))
  "Returns full string definition for message of type 'UrServiceForceModeStart-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/Transform base2forceFrame~%~%~%uint32[] selection~%~%~%geometry_msgs/Wrench wrench~%~%~%float32[] limits~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeStart-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base2forceFrame))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'selection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeStart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeStart-request
    (cl:cons ':base2forceFrame (base2forceFrame msg))
    (cl:cons ':selection (selection msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':limits (limits msg))
))
;//! \htmlinclude UrServiceForceModeStart-response.msg.html

(cl:defclass <UrServiceForceModeStart-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServiceForceModeStart-response (<UrServiceForceModeStart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServiceForceModeStart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServiceForceModeStart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServiceForceModeStart-response> is deprecated: use caros_universalrobot-srv:UrServiceForceModeStart-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServiceForceModeStart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServiceForceModeStart-response>) ostream)
  "Serializes a message object of type '<UrServiceForceModeStart-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServiceForceModeStart-response>) istream)
  "Deserializes a message object of type '<UrServiceForceModeStart-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServiceForceModeStart-response>)))
  "Returns string type for a service object of type '<UrServiceForceModeStart-response>"
  "caros_universalrobot/UrServiceForceModeStartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStart-response)))
  "Returns string type for a service object of type 'UrServiceForceModeStart-response"
  "caros_universalrobot/UrServiceForceModeStartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServiceForceModeStart-response>)))
  "Returns md5sum for a message object of type '<UrServiceForceModeStart-response>"
  "17f1800eba3c421c9cb128cbf7d53ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServiceForceModeStart-response)))
  "Returns md5sum for a message object of type 'UrServiceForceModeStart-response"
  "17f1800eba3c421c9cb128cbf7d53ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServiceForceModeStart-response>)))
  "Returns full string definition for message of type '<UrServiceForceModeStart-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServiceForceModeStart-response)))
  "Returns full string definition for message of type 'UrServiceForceModeStart-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServiceForceModeStart-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServiceForceModeStart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServiceForceModeStart-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServiceForceModeStart)))
  'UrServiceForceModeStart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServiceForceModeStart)))
  'UrServiceForceModeStart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServiceForceModeStart)))
  "Returns string type for a service object of type '<UrServiceForceModeStart>"
  "caros_universalrobot/UrServiceForceModeStart")
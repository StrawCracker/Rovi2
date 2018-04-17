; Auto-generated. Do not edit!


(cl:in-package caros_control_msgs-srv)


;//! \htmlinclude SerialDeviceMovePtpT-request.msg.html

(cl:defclass <SerialDeviceMovePtpT-request> (roslisp-msg-protocol:ros-message)
  ((targets
    :reader targets
    :initarg :targets
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform)))
   (speeds
    :reader speeds
    :initarg :speeds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (blends
    :reader blends
    :initarg :blends
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SerialDeviceMovePtpT-request (<SerialDeviceMovePtpT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMovePtpT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMovePtpT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMovePtpT-request> is deprecated: use caros_control_msgs-srv:SerialDeviceMovePtpT-request instead.")))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <SerialDeviceMovePtpT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:targets-val is deprecated.  Use caros_control_msgs-srv:targets instead.")
  (targets m))

(cl:ensure-generic-function 'speeds-val :lambda-list '(m))
(cl:defmethod speeds-val ((m <SerialDeviceMovePtpT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:speeds-val is deprecated.  Use caros_control_msgs-srv:speeds instead.")
  (speeds m))

(cl:ensure-generic-function 'blends-val :lambda-list '(m))
(cl:defmethod blends-val ((m <SerialDeviceMovePtpT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:blends-val is deprecated.  Use caros_control_msgs-srv:blends instead.")
  (blends m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMovePtpT-request>) ostream)
  "Serializes a message object of type '<SerialDeviceMovePtpT-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'speeds))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blends))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'blends))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMovePtpT-request>) istream)
  "Deserializes a message object of type '<SerialDeviceMovePtpT-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blends) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blends)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMovePtpT-request>)))
  "Returns string type for a service object of type '<SerialDeviceMovePtpT-request>"
  "caros_control_msgs/SerialDeviceMovePtpTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtpT-request)))
  "Returns string type for a service object of type 'SerialDeviceMovePtpT-request"
  "caros_control_msgs/SerialDeviceMovePtpTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMovePtpT-request>)))
  "Returns md5sum for a message object of type '<SerialDeviceMovePtpT-request>"
  "9d894296389820976b255220f98863da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMovePtpT-request)))
  "Returns md5sum for a message object of type 'SerialDeviceMovePtpT-request"
  "9d894296389820976b255220f98863da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMovePtpT-request>)))
  "Returns full string definition for message of type '<SerialDeviceMovePtpT-request>"
  (cl:format cl:nil "~%geometry_msgs/Transform[] targets~%~%~%float32[] speeds~%~%~%float32[] blends~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMovePtpT-request)))
  "Returns full string definition for message of type 'SerialDeviceMovePtpT-request"
  (cl:format cl:nil "~%geometry_msgs/Transform[] targets~%~%~%float32[] speeds~%~%~%float32[] blends~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMovePtpT-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blends) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMovePtpT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMovePtpT-request
    (cl:cons ':targets (targets msg))
    (cl:cons ':speeds (speeds msg))
    (cl:cons ':blends (blends msg))
))
;//! \htmlinclude SerialDeviceMovePtpT-response.msg.html

(cl:defclass <SerialDeviceMovePtpT-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialDeviceMovePtpT-response (<SerialDeviceMovePtpT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialDeviceMovePtpT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialDeviceMovePtpT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_control_msgs-srv:<SerialDeviceMovePtpT-response> is deprecated: use caros_control_msgs-srv:SerialDeviceMovePtpT-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialDeviceMovePtpT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_control_msgs-srv:success-val is deprecated.  Use caros_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialDeviceMovePtpT-response>) ostream)
  "Serializes a message object of type '<SerialDeviceMovePtpT-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialDeviceMovePtpT-response>) istream)
  "Deserializes a message object of type '<SerialDeviceMovePtpT-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialDeviceMovePtpT-response>)))
  "Returns string type for a service object of type '<SerialDeviceMovePtpT-response>"
  "caros_control_msgs/SerialDeviceMovePtpTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtpT-response)))
  "Returns string type for a service object of type 'SerialDeviceMovePtpT-response"
  "caros_control_msgs/SerialDeviceMovePtpTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialDeviceMovePtpT-response>)))
  "Returns md5sum for a message object of type '<SerialDeviceMovePtpT-response>"
  "9d894296389820976b255220f98863da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialDeviceMovePtpT-response)))
  "Returns md5sum for a message object of type 'SerialDeviceMovePtpT-response"
  "9d894296389820976b255220f98863da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialDeviceMovePtpT-response>)))
  "Returns full string definition for message of type '<SerialDeviceMovePtpT-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialDeviceMovePtpT-response)))
  "Returns full string definition for message of type 'SerialDeviceMovePtpT-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialDeviceMovePtpT-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialDeviceMovePtpT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialDeviceMovePtpT-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialDeviceMovePtpT)))
  'SerialDeviceMovePtpT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialDeviceMovePtpT)))
  'SerialDeviceMovePtpT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialDeviceMovePtpT)))
  "Returns string type for a service object of type '<SerialDeviceMovePtpT>"
  "caros_control_msgs/SerialDeviceMovePtpT")
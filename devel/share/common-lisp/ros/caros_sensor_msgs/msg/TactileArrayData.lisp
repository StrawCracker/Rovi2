; Auto-generated. Do not edit!


(cl:in-package caros_sensor_msgs-msg)


;//! \htmlinclude TactileArrayData.msg.html

(cl:defclass <TactileArrayData> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TactileArrayData (<TactileArrayData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TactileArrayData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TactileArrayData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_sensor_msgs-msg:<TactileArrayData> is deprecated: use caros_sensor_msgs-msg:TactileArrayData instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <TactileArrayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:height-val is deprecated.  Use caros_sensor_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <TactileArrayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:width-val is deprecated.  Use caros_sensor_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TactileArrayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_sensor_msgs-msg:data-val is deprecated.  Use caros_sensor_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TactileArrayData>) ostream)
  "Serializes a message object of type '<TactileArrayData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TactileArrayData>) istream)
  "Deserializes a message object of type '<TactileArrayData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TactileArrayData>)))
  "Returns string type for a message object of type '<TactileArrayData>"
  "caros_sensor_msgs/TactileArrayData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TactileArrayData)))
  "Returns string type for a message object of type 'TactileArrayData"
  "caros_sensor_msgs/TactileArrayData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TactileArrayData>)))
  "Returns md5sum for a message object of type '<TactileArrayData>"
  "25f543575cd353f68dacc167e60ccb4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TactileArrayData)))
  "Returns md5sum for a message object of type 'TactileArrayData"
  "25f543575cd353f68dacc167e60ccb4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TactileArrayData>)))
  "Returns full string definition for message of type '<TactileArrayData>"
  (cl:format cl:nil "# Tepresents the state of a single array of tactile sensors. This should be used~%# in conjuction with TactileArrayState.~%~%# Tactile matrix height (number of rows)~%uint32 height~%~%# Tactile matrix width (number of columns)~%uint32 width~%~%# Tactile data~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TactileArrayData)))
  "Returns full string definition for message of type 'TactileArrayData"
  (cl:format cl:nil "# Tepresents the state of a single array of tactile sensors. This should be used~%# in conjuction with TactileArrayState.~%~%# Tactile matrix height (number of rows)~%uint32 height~%~%# Tactile matrix width (number of columns)~%uint32 width~%~%# Tactile data~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TactileArrayData>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TactileArrayData>))
  "Converts a ROS message object to a list"
  (cl:list 'TactileArrayData
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':data (data msg))
))

; Auto-generated. Do not edit!


(cl:in-package caros_common_robwork_msgs-msg)


;//! \htmlinclude RwStateData.msg.html

(cl:defclass <RwStateData> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RwStateData (<RwStateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RwStateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RwStateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_robwork_msgs-msg:<RwStateData> is deprecated: use caros_common_robwork_msgs-msg:RwStateData instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RwStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_robwork_msgs-msg:name-val is deprecated.  Use caros_common_robwork_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <RwStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_robwork_msgs-msg:size-val is deprecated.  Use caros_common_robwork_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RwStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_robwork_msgs-msg:data-val is deprecated.  Use caros_common_robwork_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RwStateData>) ostream)
  "Serializes a message object of type '<RwStateData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RwStateData>) istream)
  "Deserializes a message object of type '<RwStateData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RwStateData>)))
  "Returns string type for a message object of type '<RwStateData>"
  "caros_common_robwork_msgs/RwStateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RwStateData)))
  "Returns string type for a message object of type 'RwStateData"
  "caros_common_robwork_msgs/RwStateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RwStateData>)))
  "Returns md5sum for a message object of type '<RwStateData>"
  "62a1470d9f3ca6cf5ead3b2af2c21ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RwStateData)))
  "Returns md5sum for a message object of type 'RwStateData"
  "62a1470d9f3ca6cf5ead3b2af2c21ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RwStateData>)))
  "Returns full string definition for message of type '<RwStateData>"
  (cl:format cl:nil "# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RwStateData)))
  "Returns full string definition for message of type 'RwStateData"
  (cl:format cl:nil "# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RwStateData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RwStateData>))
  "Converts a ROS message object to a list"
  (cl:list 'RwStateData
    (cl:cons ':name (name msg))
    (cl:cons ':size (size msg))
    (cl:cons ':data (data msg))
))

; Auto-generated. Do not edit!


(cl:in-package caros_common_robwork_msgs-msg)


;//! \htmlinclude RwState.msg.html

(cl:defclass <RwState> (roslisp-msg-protocol:ros-message)
  ((state_data
    :reader state_data
    :initarg :state_data
    :type (cl:vector caros_common_robwork_msgs-msg:RwStateData)
   :initform (cl:make-array 0 :element-type 'caros_common_robwork_msgs-msg:RwStateData :initial-element (cl:make-instance 'caros_common_robwork_msgs-msg:RwStateData))))
)

(cl:defclass RwState (<RwState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RwState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RwState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_robwork_msgs-msg:<RwState> is deprecated: use caros_common_robwork_msgs-msg:RwState instead.")))

(cl:ensure-generic-function 'state_data-val :lambda-list '(m))
(cl:defmethod state_data-val ((m <RwState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_robwork_msgs-msg:state_data-val is deprecated.  Use caros_common_robwork_msgs-msg:state_data instead.")
  (state_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RwState>) ostream)
  "Serializes a message object of type '<RwState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RwState>) istream)
  "Deserializes a message object of type '<RwState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'caros_common_robwork_msgs-msg:RwStateData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RwState>)))
  "Returns string type for a message object of type '<RwState>"
  "caros_common_robwork_msgs/RwState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RwState)))
  "Returns string type for a message object of type 'RwState"
  "caros_common_robwork_msgs/RwState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RwState>)))
  "Returns md5sum for a message object of type '<RwState>"
  "91a8153d2e6cb16c0e4126365820f1d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RwState)))
  "Returns md5sum for a message object of type 'RwState"
  "91a8153d2e6cb16c0e4126365820f1d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RwState>)))
  "Returns full string definition for message of type '<RwState>"
  (cl:format cl:nil "# Serialization of RobWork state~%caros_common_robwork_msgs/RwStateData[] state_data~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwStateData~%# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RwState)))
  "Returns full string definition for message of type 'RwState"
  (cl:format cl:nil "# Serialization of RobWork state~%caros_common_robwork_msgs/RwStateData[] state_data~%~%================================================================================~%MSG: caros_common_robwork_msgs/RwStateData~%# Serialization of RobWork state data~%string name~%uint32 size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RwState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RwState>))
  "Converts a ROS message object to a list"
  (cl:list 'RwState
    (cl:cons ':state_data (state_data msg))
))

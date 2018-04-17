; Auto-generated. Do not edit!


(cl:in-package caros_common_msgs-msg)


;//! \htmlinclude CarosNodeState.msg.html

(cl:defclass <CarosNodeState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (inError
    :reader inError
    :initarg :inError
    :type cl:boolean
    :initform cl:nil)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (changed_event
    :reader changed_event
    :initarg :changed_event
    :type cl:boolean
    :initform cl:nil)
   (previous_state
    :reader previous_state
    :initarg :previous_state
    :type cl:string
    :initform ""))
)

(cl:defclass CarosNodeState (<CarosNodeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarosNodeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarosNodeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_common_msgs-msg:<CarosNodeState> is deprecated: use caros_common_msgs-msg:CarosNodeState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:state-val is deprecated.  Use caros_common_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'inError-val :lambda-list '(m))
(cl:defmethod inError-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:inError-val is deprecated.  Use caros_common_msgs-msg:inError instead.")
  (inError m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:error_msg-val is deprecated.  Use caros_common_msgs-msg:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:error_code-val is deprecated.  Use caros_common_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'changed_event-val :lambda-list '(m))
(cl:defmethod changed_event-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:changed_event-val is deprecated.  Use caros_common_msgs-msg:changed_event instead.")
  (changed_event m))

(cl:ensure-generic-function 'previous_state-val :lambda-list '(m))
(cl:defmethod previous_state-val ((m <CarosNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_common_msgs-msg:previous_state-val is deprecated.  Use caros_common_msgs-msg:previous_state instead.")
  (previous_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarosNodeState>) ostream)
  "Serializes a message object of type '<CarosNodeState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inError) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'changed_event) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'previous_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'previous_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarosNodeState>) istream)
  "Deserializes a message object of type '<CarosNodeState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'inError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'changed_event) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'previous_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'previous_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarosNodeState>)))
  "Returns string type for a message object of type '<CarosNodeState>"
  "caros_common_msgs/CarosNodeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarosNodeState)))
  "Returns string type for a message object of type 'CarosNodeState"
  "caros_common_msgs/CarosNodeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarosNodeState>)))
  "Returns md5sum for a message object of type '<CarosNodeState>"
  "90a49c4f7cb1b4f048d2e3a9d6bcc097")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarosNodeState)))
  "Returns md5sum for a message object of type 'CarosNodeState"
  "90a49c4f7cb1b4f048d2e3a9d6bcc097")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarosNodeState>)))
  "Returns full string definition for message of type '<CarosNodeState>"
  (cl:format cl:nil "# state of node (INIT,STOPPED,RUNNING,ERROR,FATALERROR)~%string state~%~%bool inError~%string error_msg~%int64 error_code~%~%# true if~%bool changed_event~%string previous_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarosNodeState)))
  "Returns full string definition for message of type 'CarosNodeState"
  (cl:format cl:nil "# state of node (INIT,STOPPED,RUNNING,ERROR,FATALERROR)~%string state~%~%bool inError~%string error_msg~%int64 error_code~%~%# true if~%bool changed_event~%string previous_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarosNodeState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
     8
     1
     4 (cl:length (cl:slot-value msg 'previous_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarosNodeState>))
  "Converts a ROS message object to a list"
  (cl:list 'CarosNodeState
    (cl:cons ':state (state msg))
    (cl:cons ':inError (inError msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':changed_event (changed_event msg))
    (cl:cons ':previous_state (previous_state msg))
))

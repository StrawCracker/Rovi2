; Auto-generated. Do not edit!


(cl:in-package caros_universalrobot-srv)


;//! \htmlinclude UrServicePayload-request.msg.html

(cl:defclass <UrServicePayload-request> (roslisp-msg-protocol:ros-message)
  ((mass
    :reader mass
    :initarg :mass
    :type cl:float
    :initform 0.0)
   (com
    :reader com
    :initarg :com
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UrServicePayload-request (<UrServicePayload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServicePayload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServicePayload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServicePayload-request> is deprecated: use caros_universalrobot-srv:UrServicePayload-request instead.")))

(cl:ensure-generic-function 'mass-val :lambda-list '(m))
(cl:defmethod mass-val ((m <UrServicePayload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:mass-val is deprecated.  Use caros_universalrobot-srv:mass instead.")
  (mass m))

(cl:ensure-generic-function 'com-val :lambda-list '(m))
(cl:defmethod com-val ((m <UrServicePayload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:com-val is deprecated.  Use caros_universalrobot-srv:com instead.")
  (com m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServicePayload-request>) ostream)
  "Serializes a message object of type '<UrServicePayload-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'com))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServicePayload-request>) istream)
  "Deserializes a message object of type '<UrServicePayload-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mass) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'com) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'com)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServicePayload-request>)))
  "Returns string type for a service object of type '<UrServicePayload-request>"
  "caros_universalrobot/UrServicePayloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServicePayload-request)))
  "Returns string type for a service object of type 'UrServicePayload-request"
  "caros_universalrobot/UrServicePayloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServicePayload-request>)))
  "Returns md5sum for a message object of type '<UrServicePayload-request>"
  "b3bc68f3c25bebd79a698d60907f049f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServicePayload-request)))
  "Returns md5sum for a message object of type 'UrServicePayload-request"
  "b3bc68f3c25bebd79a698d60907f049f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServicePayload-request>)))
  "Returns full string definition for message of type '<UrServicePayload-request>"
  (cl:format cl:nil "~%float64 mass~%~%~%float64[3] com~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServicePayload-request)))
  "Returns full string definition for message of type 'UrServicePayload-request"
  (cl:format cl:nil "~%float64 mass~%~%~%float64[3] com~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServicePayload-request>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'com) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServicePayload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServicePayload-request
    (cl:cons ':mass (mass msg))
    (cl:cons ':com (com msg))
))
;//! \htmlinclude UrServicePayload-response.msg.html

(cl:defclass <UrServicePayload-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UrServicePayload-response (<UrServicePayload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrServicePayload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrServicePayload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name caros_universalrobot-srv:<UrServicePayload-response> is deprecated: use caros_universalrobot-srv:UrServicePayload-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UrServicePayload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader caros_universalrobot-srv:success-val is deprecated.  Use caros_universalrobot-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrServicePayload-response>) ostream)
  "Serializes a message object of type '<UrServicePayload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrServicePayload-response>) istream)
  "Deserializes a message object of type '<UrServicePayload-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrServicePayload-response>)))
  "Returns string type for a service object of type '<UrServicePayload-response>"
  "caros_universalrobot/UrServicePayloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServicePayload-response)))
  "Returns string type for a service object of type 'UrServicePayload-response"
  "caros_universalrobot/UrServicePayloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrServicePayload-response>)))
  "Returns md5sum for a message object of type '<UrServicePayload-response>"
  "b3bc68f3c25bebd79a698d60907f049f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrServicePayload-response)))
  "Returns md5sum for a message object of type 'UrServicePayload-response"
  "b3bc68f3c25bebd79a698d60907f049f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrServicePayload-response>)))
  "Returns full string definition for message of type '<UrServicePayload-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrServicePayload-response)))
  "Returns full string definition for message of type 'UrServicePayload-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrServicePayload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrServicePayload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UrServicePayload-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UrServicePayload)))
  'UrServicePayload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UrServicePayload)))
  'UrServicePayload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrServicePayload)))
  "Returns string type for a service object of type '<UrServicePayload>"
  "caros_universalrobot/UrServicePayload")
;; Auto-generated. Do not edit!


(when (boundp 'caros_common_robwork_msgs::GetRwState)
  (if (not (find-package "CAROS_COMMON_ROBWORK_MSGS"))
    (make-package "CAROS_COMMON_ROBWORK_MSGS"))
  (shadow 'GetRwState (find-package "CAROS_COMMON_ROBWORK_MSGS")))
(unless (find-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATE")
  (make-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATE"))
(unless (find-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATEREQUEST")
  (make-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATEREQUEST"))
(unless (find-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATERESPONSE")
  (make-package "CAROS_COMMON_ROBWORK_MSGS::GETRWSTATERESPONSE"))

(in-package "ROS")





(defclass caros_common_robwork_msgs::GetRwStateRequest
  :super ros::object
  :slots ())

(defmethod caros_common_robwork_msgs::GetRwStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass caros_common_robwork_msgs::GetRwStateResponse
  :super ros::object
  :slots (_state ))

(defmethod caros_common_robwork_msgs::GetRwStateResponse
  (:init
   (&key
    ((:state __state) (instance caros_common_robwork_msgs::RwState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; caros_common_robwork_msgs/RwState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_robwork_msgs/RwState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_robwork_msgs/RwState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass caros_common_robwork_msgs::GetRwState
  :super ros::object
  :slots ())

(setf (get caros_common_robwork_msgs::GetRwState :md5sum-) "ec5f59bcd9871c158266b6d4f91ec6c6")
(setf (get caros_common_robwork_msgs::GetRwState :datatype-) "caros_common_robwork_msgs/GetRwState")
(setf (get caros_common_robwork_msgs::GetRwState :request) caros_common_robwork_msgs::GetRwStateRequest)
(setf (get caros_common_robwork_msgs::GetRwState :response) caros_common_robwork_msgs::GetRwStateResponse)

(defmethod caros_common_robwork_msgs::GetRwStateRequest
  (:response () (instance caros_common_robwork_msgs::GetRwStateResponse :init)))

(setf (get caros_common_robwork_msgs::GetRwStateRequest :md5sum-) "ec5f59bcd9871c158266b6d4f91ec6c6")
(setf (get caros_common_robwork_msgs::GetRwStateRequest :datatype-) "caros_common_robwork_msgs/GetRwStateRequest")
(setf (get caros_common_robwork_msgs::GetRwStateRequest :definition-)
      "

---

caros_common_robwork_msgs/RwState state


================================================================================
MSG: caros_common_robwork_msgs/RwState
# Serialization of RobWork state
caros_common_robwork_msgs/RwStateData[] state_data

================================================================================
MSG: caros_common_robwork_msgs/RwStateData
# Serialization of RobWork state data
string name
uint32 size
uint8[] data
")

(setf (get caros_common_robwork_msgs::GetRwStateResponse :md5sum-) "ec5f59bcd9871c158266b6d4f91ec6c6")
(setf (get caros_common_robwork_msgs::GetRwStateResponse :datatype-) "caros_common_robwork_msgs/GetRwStateResponse")
(setf (get caros_common_robwork_msgs::GetRwStateResponse :definition-)
      "

---

caros_common_robwork_msgs/RwState state


================================================================================
MSG: caros_common_robwork_msgs/RwState
# Serialization of RobWork state
caros_common_robwork_msgs/RwStateData[] state_data

================================================================================
MSG: caros_common_robwork_msgs/RwStateData
# Serialization of RobWork state data
string name
uint32 size
uint8[] data
")



(provide :caros_common_robwork_msgs/GetRwState "ec5f59bcd9871c158266b6d4f91ec6c6")



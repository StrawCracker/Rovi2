;; Auto-generated. Do not edit!


(when (boundp 'caros_common_robwork_msgs::RwState)
  (if (not (find-package "CAROS_COMMON_ROBWORK_MSGS"))
    (make-package "CAROS_COMMON_ROBWORK_MSGS"))
  (shadow 'RwState (find-package "CAROS_COMMON_ROBWORK_MSGS")))
(unless (find-package "CAROS_COMMON_ROBWORK_MSGS::RWSTATE")
  (make-package "CAROS_COMMON_ROBWORK_MSGS::RWSTATE"))

(in-package "ROS")
;;//! \htmlinclude RwState.msg.html


(defclass caros_common_robwork_msgs::RwState
  :super ros::object
  :slots (_state_data ))

(defmethod caros_common_robwork_msgs::RwState
  (:init
   (&key
    ((:state_data __state_data) (let (r) (dotimes (i 0) (push (instance caros_common_robwork_msgs::RwStateData :init) r)) r))
    )
   (send-super :init)
   (setq _state_data __state_data)
   self)
  (:state_data
   (&rest __state_data)
   (if (keywordp (car __state_data))
       (send* _state_data __state_data)
     (progn
       (if __state_data (setq _state_data (car __state_data)))
       _state_data)))
  (:serialization-length
   ()
   (+
    ;; caros_common_robwork_msgs/RwStateData[] _state_data
    (apply #'+ (send-all _state_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; caros_common_robwork_msgs/RwStateData[] _state_data
     (write-long (length _state_data) s)
     (dolist (elem _state_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; caros_common_robwork_msgs/RwStateData[] _state_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state_data (let (r) (dotimes (i n) (push (instance caros_common_robwork_msgs::RwStateData :init) r)) r))
     (dolist (elem- _state_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get caros_common_robwork_msgs::RwState :md5sum-) "91a8153d2e6cb16c0e4126365820f1d3")
(setf (get caros_common_robwork_msgs::RwState :datatype-) "caros_common_robwork_msgs/RwState")
(setf (get caros_common_robwork_msgs::RwState :definition-)
      "# Serialization of RobWork state
caros_common_robwork_msgs/RwStateData[] state_data

================================================================================
MSG: caros_common_robwork_msgs/RwStateData
# Serialization of RobWork state data
string name
uint32 size
uint8[] data

")



(provide :caros_common_robwork_msgs/RwState "91a8153d2e6cb16c0e4126365820f1d3")



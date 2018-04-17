;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::GripperStopMovement)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'GripperStopMovement (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENT")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENT"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENTREQUEST")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENTREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENTRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::GRIPPERSTOPMOVEMENTRESPONSE"))

(in-package "ROS")





(defclass caros_control_msgs::GripperStopMovementRequest
  :super ros::object
  :slots ())

(defmethod caros_control_msgs::GripperStopMovementRequest
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

(defclass caros_control_msgs::GripperStopMovementResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::GripperStopMovementResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass caros_control_msgs::GripperStopMovement
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::GripperStopMovement :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::GripperStopMovement :datatype-) "caros_control_msgs/GripperStopMovement")
(setf (get caros_control_msgs::GripperStopMovement :request) caros_control_msgs::GripperStopMovementRequest)
(setf (get caros_control_msgs::GripperStopMovement :response) caros_control_msgs::GripperStopMovementResponse)

(defmethod caros_control_msgs::GripperStopMovementRequest
  (:response () (instance caros_control_msgs::GripperStopMovementResponse :init)))

(setf (get caros_control_msgs::GripperStopMovementRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::GripperStopMovementRequest :datatype-) "caros_control_msgs/GripperStopMovementRequest")
(setf (get caros_control_msgs::GripperStopMovementRequest :definition-)
      "
---

bool success

")

(setf (get caros_control_msgs::GripperStopMovementResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_control_msgs::GripperStopMovementResponse :datatype-) "caros_control_msgs/GripperStopMovementResponse")
(setf (get caros_control_msgs::GripperStopMovementResponse :definition-)
      "
---

bool success

")



(provide :caros_control_msgs/GripperStopMovement "358e233cde0c8a8bcfea4ce193f8fc15")



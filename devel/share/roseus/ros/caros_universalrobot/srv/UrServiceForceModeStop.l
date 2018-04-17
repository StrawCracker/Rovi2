;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceForceModeStop)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceForceModeStop (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOP")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOP"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOPREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOPREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOPRESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEFORCEMODESTOPRESPONSE"))

(in-package "ROS")





(defclass caros_universalrobot::UrServiceForceModeStopRequest
  :super ros::object
  :slots ())

(defmethod caros_universalrobot::UrServiceForceModeStopRequest
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

(defclass caros_universalrobot::UrServiceForceModeStopResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceForceModeStopResponse
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

(defclass caros_universalrobot::UrServiceForceModeStop
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceForceModeStop :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceForceModeStop :datatype-) "caros_universalrobot/UrServiceForceModeStop")
(setf (get caros_universalrobot::UrServiceForceModeStop :request) caros_universalrobot::UrServiceForceModeStopRequest)
(setf (get caros_universalrobot::UrServiceForceModeStop :response) caros_universalrobot::UrServiceForceModeStopResponse)

(defmethod caros_universalrobot::UrServiceForceModeStopRequest
  (:response () (instance caros_universalrobot::UrServiceForceModeStopResponse :init)))

(setf (get caros_universalrobot::UrServiceForceModeStopRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceForceModeStopRequest :datatype-) "caros_universalrobot/UrServiceForceModeStopRequest")
(setf (get caros_universalrobot::UrServiceForceModeStopRequest :definition-)
      "

---

bool success

")

(setf (get caros_universalrobot::UrServiceForceModeStopResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceForceModeStopResponse :datatype-) "caros_universalrobot/UrServiceForceModeStopResponse")
(setf (get caros_universalrobot::UrServiceForceModeStopResponse :definition-)
      "

---

bool success

")



(provide :caros_universalrobot/UrServiceForceModeStop "358e233cde0c8a8bcfea4ce193f8fc15")



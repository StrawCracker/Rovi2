;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceEmpty)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceEmpty (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTY")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTY"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTYREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTYREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTYRESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEEMPTYRESPONSE"))

(in-package "ROS")





(defclass caros_universalrobot::UrServiceEmptyRequest
  :super ros::object
  :slots ())

(defmethod caros_universalrobot::UrServiceEmptyRequest
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

(defclass caros_universalrobot::UrServiceEmptyResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceEmptyResponse
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

(defclass caros_universalrobot::UrServiceEmpty
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceEmpty :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceEmpty :datatype-) "caros_universalrobot/UrServiceEmpty")
(setf (get caros_universalrobot::UrServiceEmpty :request) caros_universalrobot::UrServiceEmptyRequest)
(setf (get caros_universalrobot::UrServiceEmpty :response) caros_universalrobot::UrServiceEmptyResponse)

(defmethod caros_universalrobot::UrServiceEmptyRequest
  (:response () (instance caros_universalrobot::UrServiceEmptyResponse :init)))

(setf (get caros_universalrobot::UrServiceEmptyRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceEmptyRequest :datatype-) "caros_universalrobot/UrServiceEmptyRequest")
(setf (get caros_universalrobot::UrServiceEmptyRequest :definition-)
      "---

bool success

")

(setf (get caros_universalrobot::UrServiceEmptyResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get caros_universalrobot::UrServiceEmptyResponse :datatype-) "caros_universalrobot/UrServiceEmptyResponse")
(setf (get caros_universalrobot::UrServiceEmptyResponse :definition-)
      "---

bool success

")



(provide :caros_universalrobot/UrServiceEmpty "358e233cde0c8a8bcfea4ce193f8fc15")



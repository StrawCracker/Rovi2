;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServiceSetIO)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServiceSetIO (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESETIO")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESETIO"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESETIOREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESETIOREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICESETIORESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICESETIORESPONSE"))

(in-package "ROS")





(defclass caros_universalrobot::UrServiceSetIORequest
  :super ros::object
  :slots (_pin _value ))

(defmethod caros_universalrobot::UrServiceSetIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value __value)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _pin
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pin
       (write-byte _pin s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass caros_universalrobot::UrServiceSetIOResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServiceSetIOResponse
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

(defclass caros_universalrobot::UrServiceSetIO
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServiceSetIO :md5sum-) "42b22819bd3f8744fa17cdb490b70f35")
(setf (get caros_universalrobot::UrServiceSetIO :datatype-) "caros_universalrobot/UrServiceSetIO")
(setf (get caros_universalrobot::UrServiceSetIO :request) caros_universalrobot::UrServiceSetIORequest)
(setf (get caros_universalrobot::UrServiceSetIO :response) caros_universalrobot::UrServiceSetIOResponse)

(defmethod caros_universalrobot::UrServiceSetIORequest
  (:response () (instance caros_universalrobot::UrServiceSetIOResponse :init)))

(setf (get caros_universalrobot::UrServiceSetIORequest :md5sum-) "42b22819bd3f8744fa17cdb490b70f35")
(setf (get caros_universalrobot::UrServiceSetIORequest :datatype-) "caros_universalrobot/UrServiceSetIORequest")
(setf (get caros_universalrobot::UrServiceSetIORequest :definition-)
      "
int8 pin


bool value
---

bool success
")

(setf (get caros_universalrobot::UrServiceSetIOResponse :md5sum-) "42b22819bd3f8744fa17cdb490b70f35")
(setf (get caros_universalrobot::UrServiceSetIOResponse :datatype-) "caros_universalrobot/UrServiceSetIOResponse")
(setf (get caros_universalrobot::UrServiceSetIOResponse :definition-)
      "
int8 pin


bool value
---

bool success
")



(provide :caros_universalrobot/UrServiceSetIO "42b22819bd3f8744fa17cdb490b70f35")



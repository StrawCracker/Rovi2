;; Auto-generated. Do not edit!


(when (boundp 'caros_universalrobot::UrServicePayload)
  (if (not (find-package "CAROS_UNIVERSALROBOT"))
    (make-package "CAROS_UNIVERSALROBOT"))
  (shadow 'UrServicePayload (find-package "CAROS_UNIVERSALROBOT")))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOAD")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOAD"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOADREQUEST")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOADREQUEST"))
(unless (find-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOADRESPONSE")
  (make-package "CAROS_UNIVERSALROBOT::URSERVICEPAYLOADRESPONSE"))

(in-package "ROS")





(defclass caros_universalrobot::UrServicePayloadRequest
  :super ros::object
  :slots (_mass _com ))

(defmethod caros_universalrobot::UrServicePayloadRequest
  (:init
   (&key
    ((:mass __mass) 0.0)
    ((:com __com) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _mass (float __mass))
   (setq _com __com)
   self)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:com
   (&optional __com)
   (if __com (setq _com __com)) _com)
  (:serialization-length
   ()
   (+
    ;; float64 _mass
    8
    ;; float64[3] _com
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _com
     (dotimes (i 3)
       (sys::poke (elt _com i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _com
   (dotimes (i (length _com))
     (setf (elt _com i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass caros_universalrobot::UrServicePayloadResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_universalrobot::UrServicePayloadResponse
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

(defclass caros_universalrobot::UrServicePayload
  :super ros::object
  :slots ())

(setf (get caros_universalrobot::UrServicePayload :md5sum-) "b3bc68f3c25bebd79a698d60907f049f")
(setf (get caros_universalrobot::UrServicePayload :datatype-) "caros_universalrobot/UrServicePayload")
(setf (get caros_universalrobot::UrServicePayload :request) caros_universalrobot::UrServicePayloadRequest)
(setf (get caros_universalrobot::UrServicePayload :response) caros_universalrobot::UrServicePayloadResponse)

(defmethod caros_universalrobot::UrServicePayloadRequest
  (:response () (instance caros_universalrobot::UrServicePayloadResponse :init)))

(setf (get caros_universalrobot::UrServicePayloadRequest :md5sum-) "b3bc68f3c25bebd79a698d60907f049f")
(setf (get caros_universalrobot::UrServicePayloadRequest :datatype-) "caros_universalrobot/UrServicePayloadRequest")
(setf (get caros_universalrobot::UrServicePayloadRequest :definition-)
      "
float64 mass


float64[3] com

---

bool success

")

(setf (get caros_universalrobot::UrServicePayloadResponse :md5sum-) "b3bc68f3c25bebd79a698d60907f049f")
(setf (get caros_universalrobot::UrServicePayloadResponse :datatype-) "caros_universalrobot/UrServicePayloadResponse")
(setf (get caros_universalrobot::UrServicePayloadResponse :definition-)
      "
float64 mass


float64[3] com

---

bool success

")



(provide :caros_universalrobot/UrServicePayload "b3bc68f3c25bebd79a698d60907f049f")



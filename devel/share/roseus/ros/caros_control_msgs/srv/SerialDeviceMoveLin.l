;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceMoveLin)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceMoveLin (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELIN")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELIN"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELINREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELINREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELINRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEMOVELINRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_control_msgs::SerialDeviceMoveLinRequest
  :super ros::object
  :slots (_targets _speeds _blends ))

(defmethod caros_control_msgs::SerialDeviceMoveLinRequest
  (:init
   (&key
    ((:targets __targets) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    ((:speeds __speeds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:blends __blends) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _targets __targets)
   (setq _speeds __speeds)
   (setq _blends __blends)
   self)
  (:targets
   (&rest __targets)
   (if (keywordp (car __targets))
       (send* _targets __targets)
     (progn
       (if __targets (setq _targets (car __targets)))
       _targets)))
  (:speeds
   (&optional __speeds)
   (if __speeds (setq _speeds __speeds)) _speeds)
  (:blends
   (&optional __blends)
   (if __blends (setq _blends __blends)) _blends)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ;; float32[] _speeds
    (* 4    (length _speeds)) 4
    ;; float32[] _blends
    (* 4    (length _blends)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (send elem :serialize s)
       )
     ;; float32[] _speeds
     (write-long (length _speeds) s)
     (dotimes (i (length _speeds))
       (sys::poke (elt _speeds i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _blends
     (write-long (length _blends) s)
     (dotimes (i (length _blends))
       (sys::poke (elt _blends i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _speeds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speeds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speeds i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _blends
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blends (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _blends i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceMoveLinResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceMoveLinResponse
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

(defclass caros_control_msgs::SerialDeviceMoveLin
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceMoveLin :md5sum-) "9d894296389820976b255220f98863da")
(setf (get caros_control_msgs::SerialDeviceMoveLin :datatype-) "caros_control_msgs/SerialDeviceMoveLin")
(setf (get caros_control_msgs::SerialDeviceMoveLin :request) caros_control_msgs::SerialDeviceMoveLinRequest)
(setf (get caros_control_msgs::SerialDeviceMoveLin :response) caros_control_msgs::SerialDeviceMoveLinResponse)

(defmethod caros_control_msgs::SerialDeviceMoveLinRequest
  (:response () (instance caros_control_msgs::SerialDeviceMoveLinResponse :init)))

(setf (get caros_control_msgs::SerialDeviceMoveLinRequest :md5sum-) "9d894296389820976b255220f98863da")
(setf (get caros_control_msgs::SerialDeviceMoveLinRequest :datatype-) "caros_control_msgs/SerialDeviceMoveLinRequest")
(setf (get caros_control_msgs::SerialDeviceMoveLinRequest :definition-)
      "
geometry_msgs/Transform[] targets


float32[] speeds


float32[] blends


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool success

")

(setf (get caros_control_msgs::SerialDeviceMoveLinResponse :md5sum-) "9d894296389820976b255220f98863da")
(setf (get caros_control_msgs::SerialDeviceMoveLinResponse :datatype-) "caros_control_msgs/SerialDeviceMoveLinResponse")
(setf (get caros_control_msgs::SerialDeviceMoveLinResponse :definition-)
      "
geometry_msgs/Transform[] targets


float32[] speeds


float32[] blends


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool success

")



(provide :caros_control_msgs/SerialDeviceMoveLin "9d894296389820976b255220f98863da")



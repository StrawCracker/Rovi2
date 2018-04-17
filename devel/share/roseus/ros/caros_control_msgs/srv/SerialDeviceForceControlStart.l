;; Auto-generated. Do not edit!


(when (boundp 'caros_control_msgs::SerialDeviceForceControlStart)
  (if (not (find-package "CAROS_CONTROL_MSGS"))
    (make-package "CAROS_CONTROL_MSGS"))
  (shadow 'SerialDeviceForceControlStart (find-package "CAROS_CONTROL_MSGS")))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTART")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTART"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTARTREQUEST")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTARTREQUEST"))
(unless (find-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTARTRESPONSE")
  (make-package "CAROS_CONTROL_MSGS::SERIALDEVICEFORCECONTROLSTARTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass caros_control_msgs::SerialDeviceForceControlStartRequest
  :super ros::object
  :slots (_base2forceframe _selection _wrench _limits ))

(defmethod caros_control_msgs::SerialDeviceForceControlStartRequest
  (:init
   (&key
    ((:base2forceframe __base2forceframe) (instance geometry_msgs::Transform :init))
    ((:selection __selection) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:limits __limits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _base2forceframe __base2forceframe)
   (setq _selection __selection)
   (setq _wrench __wrench)
   (setq _limits __limits)
   self)
  (:base2forceframe
   (&rest __base2forceframe)
   (if (keywordp (car __base2forceframe))
       (send* _base2forceframe __base2forceframe)
     (progn
       (if __base2forceframe (setq _base2forceframe (car __base2forceframe)))
       _base2forceframe)))
  (:selection
   (&optional __selection)
   (if __selection (setq _selection __selection)) _selection)
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:limits
   (&optional __limits)
   (if __limits (setq _limits __limits)) _limits)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _base2forceframe
    (send _base2forceframe :serialization-length)
    ;; uint32[] _selection
    (* 4    (length _selection)) 4
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; float32[] _limits
    (* 4    (length _limits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _base2forceframe
       (send _base2forceframe :serialize s)
     ;; uint32[] _selection
     (write-long (length _selection) s)
     (dotimes (i (length _selection))
       (write-long (elt _selection i) s)
       )
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; float32[] _limits
     (write-long (length _limits) s)
     (dotimes (i (length _limits))
       (sys::poke (elt _limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _base2forceframe
     (send _base2forceframe :deserialize buf ptr-) (incf ptr- (send _base2forceframe :serialization-length))
   ;; uint32[] _selection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _selection (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _selection i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; float32[] _limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass caros_control_msgs::SerialDeviceForceControlStartResponse
  :super ros::object
  :slots (_success ))

(defmethod caros_control_msgs::SerialDeviceForceControlStartResponse
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

(defclass caros_control_msgs::SerialDeviceForceControlStart
  :super ros::object
  :slots ())

(setf (get caros_control_msgs::SerialDeviceForceControlStart :md5sum-) "5e3ec31bde7d465f1f29c724fa9f5796")
(setf (get caros_control_msgs::SerialDeviceForceControlStart :datatype-) "caros_control_msgs/SerialDeviceForceControlStart")
(setf (get caros_control_msgs::SerialDeviceForceControlStart :request) caros_control_msgs::SerialDeviceForceControlStartRequest)
(setf (get caros_control_msgs::SerialDeviceForceControlStart :response) caros_control_msgs::SerialDeviceForceControlStartResponse)

(defmethod caros_control_msgs::SerialDeviceForceControlStartRequest
  (:response () (instance caros_control_msgs::SerialDeviceForceControlStartResponse :init)))

(setf (get caros_control_msgs::SerialDeviceForceControlStartRequest :md5sum-) "5e3ec31bde7d465f1f29c724fa9f5796")
(setf (get caros_control_msgs::SerialDeviceForceControlStartRequest :datatype-) "caros_control_msgs/SerialDeviceForceControlStartRequest")
(setf (get caros_control_msgs::SerialDeviceForceControlStartRequest :definition-)
      "


geometry_msgs/Transform base2forceframe


uint32[] selection


geometry_msgs/Wrench wrench


float32[] limits



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

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque
---

bool success

")

(setf (get caros_control_msgs::SerialDeviceForceControlStartResponse :md5sum-) "5e3ec31bde7d465f1f29c724fa9f5796")
(setf (get caros_control_msgs::SerialDeviceForceControlStartResponse :datatype-) "caros_control_msgs/SerialDeviceForceControlStartResponse")
(setf (get caros_control_msgs::SerialDeviceForceControlStartResponse :definition-)
      "


geometry_msgs/Transform base2forceframe


uint32[] selection


geometry_msgs/Wrench wrench


float32[] limits



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

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque
---

bool success

")



(provide :caros_control_msgs/SerialDeviceForceControlStart "5e3ec31bde7d465f1f29c724fa9f5796")



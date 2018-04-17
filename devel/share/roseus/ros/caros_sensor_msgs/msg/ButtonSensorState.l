;; Auto-generated. Do not edit!


(when (boundp 'caros_sensor_msgs::ButtonSensorState)
  (if (not (find-package "CAROS_SENSOR_MSGS"))
    (make-package "CAROS_SENSOR_MSGS"))
  (shadow 'ButtonSensorState (find-package "CAROS_SENSOR_MSGS")))
(unless (find-package "CAROS_SENSOR_MSGS::BUTTONSENSORSTATE")
  (make-package "CAROS_SENSOR_MSGS::BUTTONSENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ButtonSensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass caros_sensor_msgs::ButtonSensorState
  :super ros::object
  :slots (_header _digital _digital_ids _analog _analog_ids ))

(defmethod caros_sensor_msgs::ButtonSensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:digital __digital) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:digital_ids __digital_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:analog __analog) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:analog_ids __analog_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _digital __digital)
   (setq _digital_ids __digital_ids)
   (setq _analog __analog)
   (setq _analog_ids __analog_ids)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:digital
   (&optional __digital)
   (if __digital (setq _digital __digital)) _digital)
  (:digital_ids
   (&optional __digital_ids)
   (if __digital_ids (setq _digital_ids __digital_ids)) _digital_ids)
  (:analog
   (&optional __analog)
   (if __analog (setq _analog __analog)) _analog)
  (:analog_ids
   (&optional __analog_ids)
   (if __analog_ids (setq _analog_ids __analog_ids)) _analog_ids)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _digital
    (* 1    (length _digital)) 4
    ;; string[] _digital_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _digital_ids)) 4
    ;; bool[] _analog
    (* 1    (length _analog)) 4
    ;; string[] _analog_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _analog_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _digital
     (write-long (length _digital) s)
     (dotimes (i (length _digital))
       (if (elt _digital i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string[] _digital_ids
     (write-long (length _digital_ids) s)
     (dolist (elem _digital_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _analog
     (write-long (length _analog) s)
     (dotimes (i (length _analog))
       (if (elt _analog i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string[] _analog_ids
     (write-long (length _analog_ids) s)
     (dolist (elem _analog_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _digital
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital (make-list n))
     (dotimes (i n)
     (setf (elt _digital i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string[] _digital_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _digital_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _analog
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog (make-list n))
     (dotimes (i n)
     (setf (elt _analog i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string[] _analog_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _analog_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get caros_sensor_msgs::ButtonSensorState :md5sum-) "cbc246135ff6dad08335b5ff9b905da1")
(setf (get caros_sensor_msgs::ButtonSensorState :datatype-) "caros_sensor_msgs/ButtonSensorState")
(setf (get caros_sensor_msgs::ButtonSensorState :definition-)
      "# Represents the state of a set of analog and digital buttons.

# Header containing information about time and frameid
Header header

# Array of bools for digital buttons
bool[] digital

# IDs for the digital buttons
string[] digital_ids

# Array of values for analog buttons
bool[] analog

# IDs for the analog buttons
string[] analog_ids

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :caros_sensor_msgs/ButtonSensorState "cbc246135ff6dad08335b5ff9b905da1")



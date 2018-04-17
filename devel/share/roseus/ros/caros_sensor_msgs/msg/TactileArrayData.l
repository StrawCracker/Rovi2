;; Auto-generated. Do not edit!


(when (boundp 'caros_sensor_msgs::TactileArrayData)
  (if (not (find-package "CAROS_SENSOR_MSGS"))
    (make-package "CAROS_SENSOR_MSGS"))
  (shadow 'TactileArrayData (find-package "CAROS_SENSOR_MSGS")))
(unless (find-package "CAROS_SENSOR_MSGS::TACTILEARRAYDATA")
  (make-package "CAROS_SENSOR_MSGS::TACTILEARRAYDATA"))

(in-package "ROS")
;;//! \htmlinclude TactileArrayData.msg.html


(defclass caros_sensor_msgs::TactileArrayData
  :super ros::object
  :slots (_height _width _data ))

(defmethod caros_sensor_msgs::TactileArrayData
  (:init
   (&key
    ((:height __height) 0)
    ((:width __width) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _data __data)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _width
       (write-long _width s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get caros_sensor_msgs::TactileArrayData :md5sum-) "25f543575cd353f68dacc167e60ccb4d")
(setf (get caros_sensor_msgs::TactileArrayData :datatype-) "caros_sensor_msgs/TactileArrayData")
(setf (get caros_sensor_msgs::TactileArrayData :definition-)
      "# Tepresents the state of a single array of tactile sensors. This should be used
# in conjuction with TactileArrayState.

# Tactile matrix height (number of rows)
uint32 height

# Tactile matrix width (number of columns)
uint32 width

# Tactile data
float64[] data

")



(provide :caros_sensor_msgs/TactileArrayData "25f543575cd353f68dacc167e60ccb4d")



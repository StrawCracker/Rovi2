;; Auto-generated. Do not edit!


(when (boundp 'caros_common_msgs::Q)
  (if (not (find-package "CAROS_COMMON_MSGS"))
    (make-package "CAROS_COMMON_MSGS"))
  (shadow 'Q (find-package "CAROS_COMMON_MSGS")))
(unless (find-package "CAROS_COMMON_MSGS::Q")
  (make-package "CAROS_COMMON_MSGS::Q"))

(in-package "ROS")
;;//! \htmlinclude Q.msg.html


(defclass caros_common_msgs::Q
  :super ros::object
  :slots (_data ))

(defmethod caros_common_msgs::Q
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get caros_common_msgs::Q :md5sum-) "788898178a3da2c3718461eecda8f714")
(setf (get caros_common_msgs::Q :datatype-) "caros_common_msgs/Q")
(setf (get caros_common_msgs::Q :definition-)
      "# A configuration Q
float64[] data

")



(provide :caros_common_msgs/Q "788898178a3da2c3718461eecda8f714")



;; Auto-generated. Do not edit!


(when (boundp 'caros_common_robwork_msgs::RwStateData)
  (if (not (find-package "CAROS_COMMON_ROBWORK_MSGS"))
    (make-package "CAROS_COMMON_ROBWORK_MSGS"))
  (shadow 'RwStateData (find-package "CAROS_COMMON_ROBWORK_MSGS")))
(unless (find-package "CAROS_COMMON_ROBWORK_MSGS::RWSTATEDATA")
  (make-package "CAROS_COMMON_ROBWORK_MSGS::RWSTATEDATA"))

(in-package "ROS")
;;//! \htmlinclude RwStateData.msg.html


(defclass caros_common_robwork_msgs::RwStateData
  :super ros::object
  :slots (_name _size _data ))

(defmethod caros_common_robwork_msgs::RwStateData
  (:init
   (&key
    ((:name __name) "")
    ((:size __size) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _size (round __size))
   (setq _data __data)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _size
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _size
       (write-long _size s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get caros_common_robwork_msgs::RwStateData :md5sum-) "62a1470d9f3ca6cf5ead3b2af2c21ebe")
(setf (get caros_common_robwork_msgs::RwStateData :datatype-) "caros_common_robwork_msgs/RwStateData")
(setf (get caros_common_robwork_msgs::RwStateData :definition-)
      "# Serialization of RobWork state data
string name
uint32 size
uint8[] data

")



(provide :caros_common_robwork_msgs/RwStateData "62a1470d9f3ca6cf5ead3b2af2c21ebe")



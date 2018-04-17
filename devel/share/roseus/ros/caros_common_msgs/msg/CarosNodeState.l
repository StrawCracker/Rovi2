;; Auto-generated. Do not edit!


(when (boundp 'caros_common_msgs::CarosNodeState)
  (if (not (find-package "CAROS_COMMON_MSGS"))
    (make-package "CAROS_COMMON_MSGS"))
  (shadow 'CarosNodeState (find-package "CAROS_COMMON_MSGS")))
(unless (find-package "CAROS_COMMON_MSGS::CAROSNODESTATE")
  (make-package "CAROS_COMMON_MSGS::CAROSNODESTATE"))

(in-package "ROS")
;;//! \htmlinclude CarosNodeState.msg.html


(defclass caros_common_msgs::CarosNodeState
  :super ros::object
  :slots (_state _inError _error_msg _error_code _changed_event _previous_state ))

(defmethod caros_common_msgs::CarosNodeState
  (:init
   (&key
    ((:state __state) "")
    ((:inError __inError) nil)
    ((:error_msg __error_msg) "")
    ((:error_code __error_code) 0)
    ((:changed_event __changed_event) nil)
    ((:previous_state __previous_state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _inError __inError)
   (setq _error_msg (string __error_msg))
   (setq _error_code (round __error_code))
   (setq _changed_event __changed_event)
   (setq _previous_state (string __previous_state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:inError
   (&optional __inError)
   (if __inError (setq _inError __inError)) _inError)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:changed_event
   (&optional __changed_event)
   (if __changed_event (setq _changed_event __changed_event)) _changed_event)
  (:previous_state
   (&optional __previous_state)
   (if __previous_state (setq _previous_state __previous_state)) _previous_state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; bool _inError
    1
    ;; string _error_msg
    4 (length _error_msg)
    ;; int64 _error_code
    8
    ;; bool _changed_event
    1
    ;; string _previous_state
    4 (length _previous_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; bool _inError
       (if _inError (write-byte -1 s) (write-byte 0 s))
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;; int64 _error_code
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _error_code (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _error_code) (= (length (_error_code . bv)) 2)) ;; bignum
              (write-long (ash (elt (_error_code . bv) 0) 0) s)
              (write-long (ash (elt (_error_code . bv) 1) -1) s))
             ((and (class _error_code) (= (length (_error_code . bv)) 1)) ;; big1
              (write-long (elt (_error_code . bv) 0) s)
              (write-long (if (>= _error_code 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _error_code s)(write-long (if (>= _error_code 0) 0 #xffffffff) s)))
     ;; bool _changed_event
       (if _changed_event (write-byte -1 s) (write-byte 0 s))
     ;; string _previous_state
       (write-long (length _previous_state) s) (princ _previous_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _inError
     (setq _inError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _error_code
#+(or :alpha :irix6 :x86_64)
      (setf _error_code (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _error_code (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _changed_event
     (setq _changed_event (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _previous_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _previous_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get caros_common_msgs::CarosNodeState :md5sum-) "90a49c4f7cb1b4f048d2e3a9d6bcc097")
(setf (get caros_common_msgs::CarosNodeState :datatype-) "caros_common_msgs/CarosNodeState")
(setf (get caros_common_msgs::CarosNodeState :definition-)
      "# state of node (INIT,STOPPED,RUNNING,ERROR,FATALERROR)
string state

bool inError
string error_msg
int64 error_code

# true if
bool changed_event
string previous_state

")



(provide :caros_common_msgs/CarosNodeState "90a49c4f7cb1b4f048d2e3a9d6bcc097")



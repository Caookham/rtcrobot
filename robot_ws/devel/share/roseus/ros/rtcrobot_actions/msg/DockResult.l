;; Auto-generated. Do not edit!


(when (boundp 'rtcrobot_actions::DockResult)
  (if (not (find-package "RTCROBOT_ACTIONS"))
    (make-package "RTCROBOT_ACTIONS"))
  (shadow 'DockResult (find-package "RTCROBOT_ACTIONS")))
(unless (find-package "RTCROBOT_ACTIONS::DOCKRESULT")
  (make-package "RTCROBOT_ACTIONS::DOCKRESULT"))

(in-package "ROS")
;;//! \htmlinclude DockResult.msg.html


(defclass rtcrobot_actions::DockResult
  :super ros::object
  :slots (_docked _dock_id ))

(defmethod rtcrobot_actions::DockResult
  (:init
   (&key
    ((:docked __docked) nil)
    ((:dock_id __dock_id) "")
    )
   (send-super :init)
   (setq _docked __docked)
   (setq _dock_id (string __dock_id))
   self)
  (:docked
   (&optional __docked)
   (if __docked (setq _docked __docked)) _docked)
  (:dock_id
   (&optional __dock_id)
   (if __dock_id (setq _dock_id __dock_id)) _dock_id)
  (:serialization-length
   ()
   (+
    ;; bool _docked
    1
    ;; string _dock_id
    4 (length _dock_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _docked
       (if _docked (write-byte -1 s) (write-byte 0 s))
     ;; string _dock_id
       (write-long (length _dock_id) s) (princ _dock_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _docked
     (setq _docked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _dock_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dock_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rtcrobot_actions::DockResult :md5sum-) "3c9af1b0b876b5336e9869a2cfc41c1c")
(setf (get rtcrobot_actions::DockResult :datatype-) "rtcrobot_actions/DockResult")
(setf (get rtcrobot_actions::DockResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
# Are we docked and charging?
bool docked

# Name of the dock, if known
string dock_id

")



(provide :rtcrobot_actions/DockResult "3c9af1b0b876b5336e9869a2cfc41c1c")



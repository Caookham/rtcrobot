; Auto-generated. Do not edit!


(cl:in-package rtcrobot_actions-msg)


;//! \htmlinclude MissionResult.msg.html

(cl:defclass <MissionResult> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionResult (<MissionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtcrobot_actions-msg:<MissionResult> is deprecated: use rtcrobot_actions-msg:MissionResult instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <MissionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtcrobot_actions-msg:done-val is deprecated.  Use rtcrobot_actions-msg:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionResult>) ostream)
  "Serializes a message object of type '<MissionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionResult>) istream)
  "Deserializes a message object of type '<MissionResult>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionResult>)))
  "Returns string type for a message object of type '<MissionResult>"
  "rtcrobot_actions/MissionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionResult)))
  "Returns string type for a message object of type 'MissionResult"
  "rtcrobot_actions/MissionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionResult>)))
  "Returns md5sum for a message object of type '<MissionResult>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionResult)))
  "Returns md5sum for a message object of type 'MissionResult"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionResult>)))
  "Returns full string definition for message of type '<MissionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionResult)))
  "Returns full string definition for message of type 'MissionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionResult
    (cl:cons ':done (done msg))
))

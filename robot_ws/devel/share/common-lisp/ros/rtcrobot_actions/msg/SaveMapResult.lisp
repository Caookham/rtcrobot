; Auto-generated. Do not edit!


(cl:in-package rtcrobot_actions-msg)


;//! \htmlinclude SaveMapResult.msg.html

(cl:defclass <SaveMapResult> (roslisp-msg-protocol:ros-message)
  ((saved
    :reader saved
    :initarg :saved
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveMapResult (<SaveMapResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMapResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMapResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtcrobot_actions-msg:<SaveMapResult> is deprecated: use rtcrobot_actions-msg:SaveMapResult instead.")))

(cl:ensure-generic-function 'saved-val :lambda-list '(m))
(cl:defmethod saved-val ((m <SaveMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtcrobot_actions-msg:saved-val is deprecated.  Use rtcrobot_actions-msg:saved instead.")
  (saved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMapResult>) ostream)
  "Serializes a message object of type '<SaveMapResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'saved) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMapResult>) istream)
  "Deserializes a message object of type '<SaveMapResult>"
    (cl:setf (cl:slot-value msg 'saved) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMapResult>)))
  "Returns string type for a message object of type '<SaveMapResult>"
  "rtcrobot_actions/SaveMapResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMapResult)))
  "Returns string type for a message object of type 'SaveMapResult"
  "rtcrobot_actions/SaveMapResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMapResult>)))
  "Returns md5sum for a message object of type '<SaveMapResult>"
  "b0d3810ee720d0cb544e6a5f0d6991e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMapResult)))
  "Returns md5sum for a message object of type 'SaveMapResult"
  "b0d3810ee720d0cb544e6a5f0d6991e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMapResult>)))
  "Returns full string definition for message of type '<SaveMapResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%# Are we saved?~%bool saved~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMapResult)))
  "Returns full string definition for message of type 'SaveMapResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%# Are we saved?~%bool saved~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMapResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMapResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMapResult
    (cl:cons ':saved (saved msg))
))

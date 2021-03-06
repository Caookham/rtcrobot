; Auto-generated. Do not edit!


(cl:in-package rtcrobot_actions-msg)


;//! \htmlinclude DockResult.msg.html

(cl:defclass <DockResult> (roslisp-msg-protocol:ros-message)
  ((docked
    :reader docked
    :initarg :docked
    :type cl:boolean
    :initform cl:nil)
   (dock_id
    :reader dock_id
    :initarg :dock_id
    :type cl:string
    :initform ""))
)

(cl:defclass DockResult (<DockResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtcrobot_actions-msg:<DockResult> is deprecated: use rtcrobot_actions-msg:DockResult instead.")))

(cl:ensure-generic-function 'docked-val :lambda-list '(m))
(cl:defmethod docked-val ((m <DockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtcrobot_actions-msg:docked-val is deprecated.  Use rtcrobot_actions-msg:docked instead.")
  (docked m))

(cl:ensure-generic-function 'dock_id-val :lambda-list '(m))
(cl:defmethod dock_id-val ((m <DockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtcrobot_actions-msg:dock_id-val is deprecated.  Use rtcrobot_actions-msg:dock_id instead.")
  (dock_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockResult>) ostream)
  "Serializes a message object of type '<DockResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'docked) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dock_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockResult>) istream)
  "Deserializes a message object of type '<DockResult>"
    (cl:setf (cl:slot-value msg 'docked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockResult>)))
  "Returns string type for a message object of type '<DockResult>"
  "rtcrobot_actions/DockResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockResult)))
  "Returns string type for a message object of type 'DockResult"
  "rtcrobot_actions/DockResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockResult>)))
  "Returns md5sum for a message object of type '<DockResult>"
  "3c9af1b0b876b5336e9869a2cfc41c1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockResult)))
  "Returns md5sum for a message object of type 'DockResult"
  "3c9af1b0b876b5336e9869a2cfc41c1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockResult>)))
  "Returns full string definition for message of type '<DockResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%# Are we docked and charging?~%bool docked~%~%# Name of the dock, if known~%string dock_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockResult)))
  "Returns full string definition for message of type 'DockResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%# Are we docked and charging?~%bool docked~%~%# Name of the dock, if known~%string dock_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'dock_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DockResult
    (cl:cons ':docked (docked msg))
    (cl:cons ':dock_id (dock_id msg))
))

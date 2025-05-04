; Auto-generated. Do not edit!


(cl:in-package p2pkg-msg)


;//! \htmlinclude miMensajeEjercicio.msg.html

(cl:defclass <miMensajeEjercicio> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0)
   (posicion
    :reader posicion
    :initarg :posicion
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass miMensajeEjercicio (<miMensajeEjercicio>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <miMensajeEjercicio>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'miMensajeEjercicio)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2pkg-msg:<miMensajeEjercicio> is deprecated: use p2pkg-msg:miMensajeEjercicio instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <miMensajeEjercicio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2pkg-msg:numero-val is deprecated.  Use p2pkg-msg:numero instead.")
  (numero m))

(cl:ensure-generic-function 'posicion-val :lambda-list '(m))
(cl:defmethod posicion-val ((m <miMensajeEjercicio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2pkg-msg:posicion-val is deprecated.  Use p2pkg-msg:posicion instead.")
  (posicion m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<miMensajeEjercicio>)))
    "Constants for message type '<miMensajeEjercicio>"
  '((:FECHA . "hoy"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'miMensajeEjercicio)))
    "Constants for message type 'miMensajeEjercicio"
  '((:FECHA . "hoy"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <miMensajeEjercicio>) ostream)
  "Serializes a message object of type '<miMensajeEjercicio>"
  (cl:let* ((signed (cl:slot-value msg 'numero)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posicion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <miMensajeEjercicio>) istream)
  "Deserializes a message object of type '<miMensajeEjercicio>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numero) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posicion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<miMensajeEjercicio>)))
  "Returns string type for a message object of type '<miMensajeEjercicio>"
  "p2pkg/miMensajeEjercicio")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'miMensajeEjercicio)))
  "Returns string type for a message object of type 'miMensajeEjercicio"
  "p2pkg/miMensajeEjercicio")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<miMensajeEjercicio>)))
  "Returns md5sum for a message object of type '<miMensajeEjercicio>"
  "07babb0f40d4d1bfb8f26b43335fad56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'miMensajeEjercicio)))
  "Returns md5sum for a message object of type 'miMensajeEjercicio"
  "07babb0f40d4d1bfb8f26b43335fad56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<miMensajeEjercicio>)))
  "Returns full string definition for message of type '<miMensajeEjercicio>"
  (cl:format cl:nil "int32 numero~%geometry_msgs/Pose posicion~%string fecha=hoy~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'miMensajeEjercicio)))
  "Returns full string definition for message of type 'miMensajeEjercicio"
  (cl:format cl:nil "int32 numero~%geometry_msgs/Pose posicion~%string fecha=hoy~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <miMensajeEjercicio>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posicion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <miMensajeEjercicio>))
  "Converts a ROS message object to a list"
  (cl:list 'miMensajeEjercicio
    (cl:cons ':numero (numero msg))
    (cl:cons ':posicion (posicion msg))
))

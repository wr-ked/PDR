;; Auto-generated. Do not edit!


(when (boundp 'p2pkg::miMensajeEjercicio)
  (if (not (find-package "P2PKG"))
    (make-package "P2PKG"))
  (shadow 'miMensajeEjercicio (find-package "P2PKG")))
(unless (find-package "P2PKG::MIMENSAJEEJERCICIO")
  (make-package "P2PKG::MIMENSAJEEJERCICIO"))

(in-package "ROS")
;;//! \htmlinclude miMensajeEjercicio.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*FECHA*" (find-package "P2PKG::MIMENSAJEEJERCICIO"))
(shadow '*FECHA* (find-package "P2PKG::MIMENSAJEEJERCICIO"))
(defconstant p2pkg::miMensajeEjercicio::*FECHA* "hoy")

(defun p2pkg::miMensajeEjercicio-to-symbol (const)
  (cond
        (t nil)))

(defclass p2pkg::miMensajeEjercicio
  :super ros::object
  :slots (_numero _posicion ))

(defmethod p2pkg::miMensajeEjercicio
  (:init
   (&key
    ((:numero __numero) 0)
    ((:posicion __posicion) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _numero (round __numero))
   (setq _posicion __posicion)
   self)
  (:numero
   (&optional __numero)
   (if __numero (setq _numero __numero)) _numero)
  (:posicion
   (&rest __posicion)
   (if (keywordp (car __posicion))
       (send* _posicion __posicion)
     (progn
       (if __posicion (setq _posicion (car __posicion)))
       _posicion)))
  (:serialization-length
   ()
   (+
    ;; int32 _numero
    4
    ;; geometry_msgs/Pose _posicion
    (send _posicion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numero
       (write-long _numero s)
     ;; geometry_msgs/Pose _posicion
       (send _posicion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numero
     (setq _numero (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _posicion
     (send _posicion :deserialize buf ptr-) (incf ptr- (send _posicion :serialization-length))
   ;;
   self)
  )

(setf (get p2pkg::miMensajeEjercicio :md5sum-) "07babb0f40d4d1bfb8f26b43335fad56")
(setf (get p2pkg::miMensajeEjercicio :datatype-) "p2pkg/miMensajeEjercicio")
(setf (get p2pkg::miMensajeEjercicio :definition-)
      "int32 numero
geometry_msgs/Pose posicion
string fecha=hoy

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :p2pkg/miMensajeEjercicio "07babb0f40d4d1bfb8f26b43335fad56")



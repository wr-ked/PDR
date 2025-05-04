
(cl:in-package :asdf)

(defsystem "p2pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "miMensajeEjercicio" :depends-on ("_package_miMensajeEjercicio"))
    (:file "_package_miMensajeEjercicio" :depends-on ("_package"))
  ))
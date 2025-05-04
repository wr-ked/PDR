#!/usr/bin/env python3
import rospy
from p2pkg.msg import miMensajeEjercicio
from random import random
import sys

def nodopub_ejercicio2():
    if len(sys.argv) != 2:
        print("Uso: nodopub_ejercicio2.py <numero>")
        sys.exit(1)

    numero = int(sys.argv[1])
    pub = rospy.Publisher('/topic_ejercicio2', miMensajeEjercicio, queue_size=10)
    rospy.init_node('nodopub_ejercicio2', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():
        mensaje = miMensajeEjercicio()
        mensaje.numero = numero
        mensaje.posicion.position.x = random()
        mensaje.posicion.position.y = random()
        mensaje.posicion.position.z = random()
        mensaje.posicion.orientation.x = random()
        mensaje.posicion.orientation.y = random()
        mensaje.posicion.orientation.z = random()
        mensaje.posicion.orientation.w = random()

        rospy.loginfo("Enviando: numero=%d, posicion.position.x=%f, posicion.orientation.w=%f, fecha=%s" %
                      (mensaje.numero, mensaje.posicion.position.x, mensaje.posicion.orientation.w, mensaje.fecha))
        pub.publish(mensaje)
        rate.sleep()

if __name__ == '__main__':
    try:
        nodopub_ejercicio2()
    except rospy.ROSInterruptException:
        pass

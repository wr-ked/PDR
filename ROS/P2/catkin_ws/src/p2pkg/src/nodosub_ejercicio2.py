#!/usr/bin/env python3
import rospy
from p2pkg.msg import miMensajeEjercicio

def callback(data):
    rospy.loginfo("Recibido: numero=%d, posicion.position.x=%f, posicion.orientation.w=%f, fecha=%s" %
                  (data.numero, data.posicion.position.x, data.posicion.orientation.w, data.fecha))

def nodosub_ejercicio2():
    rospy.init_node('nodosub_ejercicio2', anonymous=True)
    rospy.Subscriber("/topic_ejercicio2", miMensajeEjercicio, callback)
    rospy.spin()

if __name__ == '__main__':
    nodosub_ejercicio2()

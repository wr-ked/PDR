#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from servicio_suma.srv import *

def add_two_ints_client(x, y):
    rospy.wait_for_service('add_three_ints')
    try:
        add_three_ints = rospy.ServiceProxy('add_three_ints', AddThreeInts)
        resp1 = add_three_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y z]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
	z = int(sys.argv[3])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting %s+%s+%s"%(x, y, z))
    print("%s + %s + %s = %s"%(x, y, add_three_ints_client(x, y)))

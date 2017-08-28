#!/usr/bin/env python
#-*- encoding: UTF-8 -*-

import math

class PrimeClass(object):
    
    def is_prime(num_int):
        if num_int%2 == 0:
            return False
        else:
            return True
        
    """
        Validate the number before operation
    """
    n = input("Introduce un número entero: ")    
    if type(n) == int and n > 2:
        is_prime(n)
    else:
        print "Es flotante o uno (1), realice nuevamente la operación"

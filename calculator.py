#!/usr/bin/env python
#-*- encoding: UTF-8 -*-

import re

class CalculatorClass(object):
    
    def sum(num_list):
        total = 0
        for i in num_list:
            total += i
        return total
        
    lista = [1, 2, 4, 5, 6, 7]
    print sum(lista)
        

#!/usr/bin/env python

def fib(max):

    prev, curr = 0, 1
    
    while curr <= max:
        yield curr
        prev, curr = curr, prev + curr

max_val = 55
f = fib(max_val)
f_list = list(f)
print(f_list)
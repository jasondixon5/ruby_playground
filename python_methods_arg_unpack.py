#!/usr/bin/env python

# Bundling arguments with asterisk
def print_args(a, *b):

    print("First arg: {}".format(a))
    print("Remaining args: {}".format(b))

    return None

print_args("dog", "cat", "unicorn")
"""
Result:
First arg: dog
Remaining args: ('cat', 'unicorn')

Notice that Python stores the remaining args in
a tuple automatically
"""

def explode_args(a, b, c, d):
    print("Args are {}, {}, {}, {}".format(a, b, c, d))
    return None

explode_args(1, 2, *[4, 5])
explode_args("cat", "dog", *("bird", "gopher"))

# Ruby book calls the above behavior 'exploding'
# Python docs usually call it 'unpacking'

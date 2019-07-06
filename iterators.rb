#!/usr/bin/env ruby

# Implement fibonacci iterator example
def fibUpTo(max)
    i1, i2 = 1, 1
    while i1 <= max
        yield i1
        i1, i2 = i2, i1 + i2
    end
end

#fibUpTo(10) { |f| print f, " "}
fibUpTo(55) { |f| print f, " "}

=begin
The concept and syntax are similar to a Python generator:

>>> def fib():
...     prev, curr = 0, 1
...     while True:
...         yield curr
...         prev, curr = curr, prev + curr
...
>>> f = fib()
>>> list(islice(f, 0, 10))
[1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

The difference seems to be that in Python when yielding
a value, you have to surround the call to the generator
in the code that handles what to do with the yielded 
value. In Ruby you pass the code block that will handle
what to do with the yielded value to the method, along
with any function arguments.
=end


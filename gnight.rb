#!/usr/bin/env ruby

# single or double quotes ok for strings
def sayGoodnight(name)
    result = 'Goodnight, ' + name
    return result
end

puts sayGoodnight('John-Boy')
puts sayGoodnight('Mary-Ellen')

puts 'Other ways of passing arguments:'
puts sayGoodnight "John-Boy"
puts sayGoodnight("John-Boy")
puts(sayGoodnight "John-Boy")
puts(sayGoodnight("John-Boy"))
puts "\n"
puts 'single quotes print newline character'
puts '\n'

puts 'double quotes print newline'
puts "\n"

# The difference between the two forms is the amount of processing Ruby does on the string while constructing the literal. 
# In the single-quoted case, Ruby does very little. 
# With a few exceptions, what you type into the string literal becomes the string's value.

def sayGoodnight_fancy(name)
    result = "Goodnight, #{name} (string interpolated)"
    return result
end

puts sayGoodnight_fancy('John-Boy')
puts sayGoodnight_fancy('Mary-Ellen')
puts "\n"

# Note: Technically the 'return' statement isn't necessary
# A Ruby method returns the value of the last expression evaluated

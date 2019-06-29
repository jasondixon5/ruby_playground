#!/usr/bin/env ruby

# single or double quotes ok for strings
def sayGoodnight(name)
    result = 'Goodnight, ' + name
    return result
end

puts sayGoodnight('John-Boy')
puts sayGoodnight('Mary-Ellen')
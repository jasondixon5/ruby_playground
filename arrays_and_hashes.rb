#!/usr/bin/env ruby

# create array using array literal
a = [1, 'dog', 2.718]

puts "First element"
puts a[0]
puts "Second element"
puts a[1]
puts "Fourth element (3-element list)"
puts a[3]
puts "Array:"
puts a

puts "First element, same line", a[0]

b = %w{ ant bee cat dog elk }
puts "Using %w to create array of strings"
puts b
puts "Type (class) of array b"
# puts type(b)
# b.type
puts b.class
puts "Type (class) of array b, element 0"
puts b[0].class

instSection = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion'
}

puts "instrument => section hash"
puts instSection
puts "\n"

test_inst = 'drum'
test_section = instSection[test_inst]
puts "section for #{test_inst}"
puts "#{test_section}"

test_inst = 'oboe'
test_section = instSection[test_inst]
puts "section for #{test_inst} [not in hash]"
puts "#{test_section}"
puts "Class of return value for unfound item"
puts test_section.class





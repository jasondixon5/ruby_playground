#!/usr/bin/env ruby

def bin_10(num)
    if num >= 100
        puts "value #{num} is in bin 100+"
    elsif num >= 90
        puts "value  #{num} is in bin 90 - 100"
    elsif num >= 80
        puts "value  #{num} is in bin 80 - 90"
    else
        puts "value  #{num} is in an unspecified bin"
    end
end

test_num = 150
bin_10(test_num)

test_num_array = [150, 100, 98, 82, 80, 3, -3]

test_num_array.each { | num | bin_10(num) }

instSection = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion'
}

instSection.each { | k, v | puts k + ":", v }

puts "\n"
puts "Ruby lets you create a regex obj within two /'s, e.g., /Python|Perl/"
puts "What class is such an obj?"
puts //.class




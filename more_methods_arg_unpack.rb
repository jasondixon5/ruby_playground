#!/usr/bin/env ruby

def print_args(a, *b)

    puts "First arg: #{a}"
    puts "Remaining args: #{b}"
end

def print_args_book(a, *b)
    # Join args in array like book example
    b_array = b.join(', ')

    puts "First arg: #{a}"
    puts "Remaining args: #{b_array}"
end

print_args("dog", "cat", "unicorn")
print_args_book("dog", "cat", "unicorn")
print("\n")
print_args("dog", "cat", "unicorn", "fuzzy wuzzy")
print_args_book("dog", "cat", "unicorn", "fuzzy wuzzy")

# the _book example joins all the arguments into
# one string; makes printing slightly prettier
# and could be useful to have a single string
# instead of an array (then could always expect
# a string)

def print_unpacked_args(a, b, c, d)
    puts "Args are #{a}, #{b}, #{c}, #{d}"
end
puts "\nUnpacked args example"
print_unpacked_args(1, 2, 3, 4)
print_unpacked_args(1, 2, *[3, 4])
# Following produces error:
# print_unpacked_args(1, 2, *[3, 4, 5])
# wrong number of arguments (given 5, expected 4) (ArgumentError)



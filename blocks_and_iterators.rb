#!/usr/bin/env ruby

def callBlock
    yield
end

callBlock { puts "In the block" }

=begin
def my_block
    return { puts 'In the var block' }
end

Produced error:
10: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
    return { puts 'In the var block' }
                   ^
./blocks_and_iterators.rb:10: syntax error, unexpected '}', expecting keyword_end
=end

=begin
def my_block(&block)
    return block
end

my_block {puts 'In the method block'}

Nothing happend
=end


def my_block(&block)
    yield block
end

my_block { puts "in the method block" }

# Printed: in the method block

=begin
def my_block(block)
    yield block
end

my_block { puts "in the method block" }

40:in `my_block': wrong number of arguments (given 0, expected 1) (ArgumentError)
	from ./blocks_and_iterators.rb:44:in `<main>'
=end


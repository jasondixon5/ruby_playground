#!/usr/bin/env ruby

class Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
end

song1 = Song.new("Hello, darlin'", "Conway Twitty", 3*60)

puts song1
puts "Inspect method:"
puts song1.inspect

# see that to_s just prints class name and ID
puts "to_s method:"
puts song1.to_s

# modify the to_s method
# normally this would be added to original def
# (also dangerous to be able to open up def to mods later)

class Song
    def to_s
        "Song: #{@name}, Artist: #{@artist}, Duration: #{@duration})"
    end
end

song2 = Song.new("The Cave", "Mumford and Sons", 3*60)

puts "New to_s method:"
puts song2.to_s

# Add ability to access attributes
# Otherwise get error: undefined method `name' for ...
class Song
    attr_reader :name, :artist, :duration
end

puts "Song 2 info:"
puts song2.name
puts song2.artist
puts song2.duration

# Update song attributes
# Add ability to write attributes
# Otherwise get error: undefined method `artist=' for #<Song:0x00007fa093922738>
class Song
    attr_writer :name, :artist, :duration
end
song2.artist = "Mumford & Sons"
puts song2.artist

# Update class to add method to calculate
# attributes related to duration
class Song
    def durationInMinutes
        @duration/60.0
    end

    def durationInMinutes=(value)
        @duration = (value*60).to_i
    end
end

puts song2.duration
puts song2.durationInMinutes

# Change duration using duration in minutes func
puts "Updating duration"
song2.durationInMinutes = 4
puts song2.duration
puts 4 * 60
puts song2.durationInMinutes




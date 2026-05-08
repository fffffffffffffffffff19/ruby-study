# Variables Data Types
# both integer and float type
time = 9.87 / 3600
distance = 10
speed = distance / time
puts "The average speed of a sprinter is #{speed} km/h"

# Boolean Data Type
if true
  puts "It is True!"
else
  puts "It is False!"
end

if nil
  puts "nil is True!"
else
  puts "nil is False!"
end

if 0
  puts "0 is True!"
else
  puts "0 is False!"
end

# Strings Data Type
puts "String Data Type";
puts 'escape using "\\"';
puts 'That\'s right';

# Arrays Data Type
ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
 puts i
end

# Hashes Data Type
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
 print key, " is ", value, "\n"
end
# Hashes: A hash assign its values to its key. Value to a key is assigned by => sign.
# A key pair is separated with a comma between them and all the pairs are enclosed within curly braces.
# A hash in Ruby is like an object literal in JavaScript or an associative array in PHP. They're made similarly to arrays. A trailing comma is ignored.


# Symbols Data Type
domains = {:sk => "GeeksforGeeks", :no => "GFG", :hu => "Geeks"}

puts domains[:sk]
puts domains[:no]
puts domains[:hu]
# Symbols: Symbols are light-weight strings. A symbol is preceded by a colon (:).
# They are used instead of strings because they can take up much less memory. Symbols have better performance.
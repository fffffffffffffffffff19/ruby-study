# Extracting logic to methods
# Branching if/else

# but first, some prep-work -> Comparison operators
# == Comparison
# != Not equal to
# >  Greater than
# <  Less than

puts 10 == 9 # false
puts 10 == 10 # true
puts 10 == "10".to_i # true
puts 10 == "10".to_f # true
puts
puts 10 != 9 # true
puts "hello" != "bye" # true
puts "hello" != "hello" # false
puts nil != true # true
puts
puts 100 > 99 # true
puts 100 >= 100 # true
puts 100 >= 99 # true
puts 100 >= 101 # false
puts 100 <= 101 # true
puts
puts 100.eql?(100.0) # false (also comparing the data type)
# Getting inputs from user
puts "what is your first name?"
first_name = gets.chomp

puts "what is your last name?"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"

puts "your full name is #{full_name}"
puts "your full name reversed is #{full_name.reverse}"
puts "your name has #{full_name.length - 1} characters in it"

# Parsing to INT
puts "Enter a number to multiply by 2"
input = gets.chomp

puts input.to_i * 2
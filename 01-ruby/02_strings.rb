# String concatenation
first_name = "Schiavon"
last_name = "Deveras"

puts first_name + " " + last_name

# String interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"

full_name = "#{first_name} #{last_name}"
puts full_name

# Methods, how to find them
puts full_name.methods # See all methods to use on this object

# Common methods
puts 10.class # The type
puts 10.to_s # Transfor in to a String
puts 10.to_s.class # Transfor in to a String and see the type
puts full_name.length # The String length
puts full_name.reverse # Reverse the ordering of the String
puts full_name.capitalize # Only capitalize the first letter
puts "".empty? # Check if is Empty
puts nil.nil? # Check if is Nill

sentence = "Welcome to the jungle!"
puts sentence.sub("the jungle", "utopia")

# Escaping
puts "My first name is \#{first_name}"
puts "Schiavon asked \"Hey, how are you?\""
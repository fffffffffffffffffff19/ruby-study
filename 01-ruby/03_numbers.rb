# Numbers
puts 'Welcome to simple calculator'
20.times {  print '-'  }
puts

#puts 'Enter Operand1:'
#operand1 = gets.chomp
operand1 = rand(101)
puts "operand1 = #{operand1}"
#puts 'Enter Operand2:'
#operand2 = gets.chomp
operand2 = rand(101)
puts "operand2 = #{operand2}"

puts
puts "Operand1 + Operand2 = #{operand1.to_i + operand2.to_i}"
puts "Operand1 - Operand2 = #{operand1.to_i - operand2.to_i}"
puts "Operand1 * Operand2 = #{operand1.to_i * operand2.to_i}"
puts "Operand1 / Operand2 = #{operand1.to_f / operand2.to_f}"
puts "The remainder after Operand1 / Operand2 = #{operand1.to_f % operand2.to_f}"

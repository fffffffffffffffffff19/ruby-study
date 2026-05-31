puts 'Enter Operand1:'
operand1 = gets.chomp

puts 'Enter Operand2:'
operand2 = gets.chomp

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

puts
puts "Operand1 + Operand2 = #{add(operand1, operand2)}"
puts "Operand1 - Operand2 = #{subtract(operand1, operand2)}"
puts "Operand1 * Operand2 = #{multiply(operand1, operand2)}"
puts "Operand1 / Operand2 = #{divide(operand1, operand2)}"
puts "The remainder after Operand1 / Operand2 = #{mod(operand1, operand2)}"

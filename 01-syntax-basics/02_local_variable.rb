# Local Variable
# Local variables are declared in Ruby methods and blocks.
def power_of_two(number)
    result = number ** 2
    puts "Number #{number} to the power of two is #{result}"
end

power_of_two(5)
# The method raises the given number to the power of two and outputs the result into the console.
# We have two local variables there, the result that stores the value of this mathematical function, and the other one is number.
# Yes, the argument passed to the method is indeed a local variable.
nums_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def keep_odd(number)
    numbers.keep_if { |number| number.odd? }
end

keep_odd(nums_array)
# The method accepts a list of numbers and removes the even numbers.
# You can observe that a block is passed to the keep_if method, and within this block, the number is also a local variable.
# It’s important to remember that the scope of a local variable is limited.
# If we define it within one method, it cannot be directly accessed from another method.
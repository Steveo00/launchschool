# Create a method that takes two arguments, multiplies them together, 
# and returns the result.

def multiply(num1, num2)
  num1 * num2
end

puts "Please enter the first number:"
number_1 = gets.chomp.to_f

puts "Please enter the second number:"
number_2 = gets.chomp.to_f

puts "#{number_1} multiplied by #{number_2} equals #{multiply(number_1, number_2)}."

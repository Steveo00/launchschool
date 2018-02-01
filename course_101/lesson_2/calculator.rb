# ask the user for two numbers
# ask the user for the operation to perform on the two numbers
# perfrom the operation
# output the result of the operation

puts "Welcome to the Calculator!"

puts "Please enter your first number:"
number_1 = gets.chomp.to_i

puts "Please enter your second number:"
number_2 = gets.chomp.to_i

puts "What operation would you like to perform? 1) for add, 2) for subtract, 3) for multiply, 4) for divide."
operator = gets.chomp

if operator == '1'
  result = number_1 + number_2
elsif operator == '2'
  result = number_1 - number_2
elsif operator == '3'
  result = number_1 * number_2
 else
  result = number_1.to_f/ number_2.to_f
end

puts "The result is #{result}."

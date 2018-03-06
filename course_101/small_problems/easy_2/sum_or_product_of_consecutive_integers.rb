# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.

def calculate_sum(num)
  (1..num).inject(:+) 
end

def calculate_product(num)
  (1..num).inject(:*)
end

puts "Please enter an integer greater than zero:"
number = gets.chomp.to_i

puts "Do you wish to determine the sum or product of all numbers between 1 and your number?"
calculation = gets.chomp

if calculation == "sum"
  puts "The sum of the integers between 1 and #{number} is #{calculate_sum(number)}."
else
  puts "The product of the integers between 1 and #{number} is #{calculate_product(number)}."
end

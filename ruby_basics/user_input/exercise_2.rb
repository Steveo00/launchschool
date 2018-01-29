# Write a program that asks the user for their age in years, and then
# converts that age to months.

puts "Please enter your age in years ->"
age_in_years = gets.chomp.to_i
puts "Your age in months is #{age_in_years * 12 } months"

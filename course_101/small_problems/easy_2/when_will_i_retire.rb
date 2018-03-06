# Build a program that displays when the user will retire and how many
# years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire"
retirement_age = gets.chomp.to_i

current_year = Time.now.year

puts "It's #{current_year}. You will retire in #{current_year + (retirement_age - age)}."
puts "You have only #{retirement_age - age} years of work to go!"

puts "please enter a number between 0 and 100 ->"
num = gets.chomp.to_i

if num < 0
  puts "Ooops. Number has to be zero or greater."
elsif num <= 50
  puts "Number is between 0 and 50"
elsif num <= 100
  puts "Number is between 50 and 100"
else
  puts "Number is greater than 100"
end

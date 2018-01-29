PASSWORD = 'plucker'

loop do
  puts "Please enter your password:"
  response = gets.chomp
  break if response == PASSWORD
  puts "Invalid password!"
end

puts "Welcome"
USER_NAME = 'SteveO'
PASSWORD = 'plucker'

loop do
  puts "Please enter your user name:"
  user_name_response = gets.chomp
  puts "Please enter your password:"
  password_response = gets.chomp
  break if ( user_name_response == USER_NAME ) && ( password_response == PASSWORD )
  puts "Authorization failed."
end

puts "Welcome"
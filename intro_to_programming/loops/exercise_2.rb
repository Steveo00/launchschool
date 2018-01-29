response = ''

while response != "STOP!"
  puts "Please enter a word =>"
  response = gets.chomp
  response = response.upcase
end

loop do
  puts "Do you want to print 'something'? (y/n)"
  decision = gets.chomp.downcase
  break if decision == 'n'
  puts 'something' if decision == 'y'
  puts "Invalid input! Please enter 'y' or 'n'." if decision != 'y'
end

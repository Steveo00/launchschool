number = 4021

thousands = number / 1000
hundreds  = number % 1000 / 100
tens      = number % 1000 % 100 / 10
ones      = number % 1000 % 100 % 10

puts "Thousands is #{thousands}"
puts "Hundreds is #{hundreds}"
puts "Tens is #{tens}"
puts "Ones is #{ones}"

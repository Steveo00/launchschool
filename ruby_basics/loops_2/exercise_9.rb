number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next if ( number_a < 4 ) && ( number_b < 4 )

  puts "5 was reached!"
  break
end

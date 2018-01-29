loop do
  number = rand(100)
  break if (1..10).include?(number)
  puts number
end

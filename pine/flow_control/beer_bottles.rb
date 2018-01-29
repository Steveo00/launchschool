number_of_bottles = 99

while number_of_bottles > 0
  puts "#{number_of_bottles} beer bottles"
  puts "Hanging on the wall"
  puts "#{number_of_bottles} beer bottles"
  puts "Hanging on the wall"
  puts "And if one green bottle"
  puts "Should accidentally fall"
  puts "There'll be #{number_of_bottles - 1 } green bottles"
  puts "Hanging on the wall"
  puts ''
  number_of_bottles -= 1 
end
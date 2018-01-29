def case_method(num)
  
  answer = case
  
  when num < 0
    "Ooops. Number has to be zero or greater."
  when num <= 50
    "Number is between 0 and 50"
  when num <= 100
    "Number is between 50 and 100"
  else
    "Number is greater than 100"
  end

  puts answer

end

puts "Please enter a number between 0 and 100 ->"
number = gets.chomp.to_i

case_method(number)

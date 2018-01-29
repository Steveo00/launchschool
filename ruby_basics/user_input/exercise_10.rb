def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number
  loop do
    puts "Please enter a positive or negative number:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts "Invalid input. Only non-zero integers are allowed."    
  end
end

loop do  
  first_number = get_number
  second_number = get_number
  
  if first_number * second_number < 0
    puts "#{first_number} + #{second_number} =  #{first_number + second_number}"
    break  
  else
    puts "Sorry, one integer must be positive, the other must be negative."
    puts "Please start over."
  end
end

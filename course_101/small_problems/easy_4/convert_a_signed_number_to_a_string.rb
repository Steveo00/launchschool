# In the previous exercise, you developed a method that converts 
# non-negative numbers to strings. In this exercise, you're going to 
# extend that method by adding the ability to represent negative numbers 
# as well.

# Write a method that takes an integer, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
# use integer_to_string from the previous exercise.

DIGITS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

def integer_to_string(num)
  num = num.abs
  str = ''
  loop do
    str << DIGITS[num % 10]
    num = num / 10
    break if num == 0
  end
  str.reverse
end

def signed_integer_to_string(num)
  if num == 0
    integer_to_string(num)
  elsif num > 0
    integer_to_string(num).prepend('+')
  else
    integer_to_string(num).prepend('-')
  end        
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

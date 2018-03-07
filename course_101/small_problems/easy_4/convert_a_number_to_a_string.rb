# Write a method that takes a positive integer or zero, and converts it 
# to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc.

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
  str = ''
  loop do
    str << DIGITS[num % 10]
    num = num / 10
    break if num == 0
  end
  str.reverse
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

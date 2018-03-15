# A double number is a number with an even number of digits whose left-side digits are 
# exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all 
# double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the 
# argument is a double number; double numbers should be returned as-is.

def twice(number)
  index = number.to_s.size.to_i/2

  if number.to_s[0..index - 1] != number.to_s[index..index * 2] || number < 10   
    number * 2 
  else
    number
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

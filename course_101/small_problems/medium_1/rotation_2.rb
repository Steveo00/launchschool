# Write a method that can rotate the last n digits of a number. 

def rotate_rightmost_digits(number, digits)
  num_array = number.to_s.split(//)
  length = num_array.size
  num_array << num_array.delete_at(length - digits)
  num_array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

# Write a method that computes the difference between the square of the sum of the first 
# n positive integers and the sum of the squares of the first n positive integers.

def sum_square_difference(number)
  array = []
  1.upto(number) do |num|
    array << num
  end
  
  squares = array.map do |num|
    num*num
  end

  (array.reduce(:+))**2 - squares.reduce(:+)
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
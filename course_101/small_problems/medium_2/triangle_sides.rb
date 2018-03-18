# A triangle is classified as follows:

# - equilateral All 3 sides are of equal length
# - isosceles 2 sides are of equal length, while the 3rd is different
# - scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be 
# greater than the length of the longest side, and all sides must have lengths greater 
# than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and 
# returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether 
# the triangle is equilateral, isosceles, scalene, or invalid.

def valid_triangle(num1, num2, num3)
  return :invalid if num1 <= 0 || num2 <= 0 || num3 <= 0
  num_array = [num1, num2, num3]
  num_array.sort!
  return :invalid if num_array[0] + num_array[1] <= num_array[2]
  :valid
end

def triangle(num1, num2, num3)
  return :invalid if valid_triangle(num1, num2, num3) == :invalid
  return :equilateral if num1 == num2 && num2 == num3
  return :scalene if num1 != num2 && num1 != num3 && num2 != num3
  :isosceles
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid

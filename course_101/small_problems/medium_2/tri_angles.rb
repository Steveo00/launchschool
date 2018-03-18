# A triangle is classified as follows:

# - right One angle of the triangle is a right angle (90 degrees)
# - acute All 3 angles of the triangle are less than 90 degrees
# - obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all 
# angles must be greater than 0: if either of these conditions is not satisfied, the 
# triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
# :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, 
# acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point 
# errors. You may also assume that the arguments are specified in degrees.

def valid_triangle(deg1, deg2, deg3)
  return :invalid if deg1 + deg2 + deg3 != 180
  return :invalid if deg1 <= 0 || deg2 <= 0 || deg3 <= 0
  :valid
end

def triangle(deg1, deg2, deg3)
  return :invalid if valid_triangle(deg1, deg2, deg3) == :invalid
  return :acute if deg1 < 90 && deg2 < 90 && deg3 < 90
  return :right if deg1 == 90 || deg2 == 90 || deg3 == 90
  :obtuse
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid

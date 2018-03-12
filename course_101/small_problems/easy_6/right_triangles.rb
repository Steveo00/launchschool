# Write a method that takes a positive integer, n, as an argument, and 
# displays a right triangle whose sides each have n stars. The 
# hypotenuse of the triangle should have one end at the lower-left of 
# the triangle, and the other end at the upper-right.

def triangle(num)
  spaces = num - 1
  stars = num - 4

  num.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
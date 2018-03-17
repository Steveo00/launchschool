# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd 
# integer that is supplied as an argument to the method. You may assume that the argument 
# will always be an odd integer.

# diamond(1)

#     *

# diamond(3)

#     *
#    ***
#     *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def print_diamond(size, num)
  num_of_spaces = (size - num)/2
  puts " " * num_of_spaces + "*" * num + " " * num_of_spaces
end

def diamond(number)
  1.step(number, 2) { |num| print_diamond(number, num)  }
  (number-2).step(1, -2) { |num|  print_diamond(number, num)  }
end

diamond(1)
puts
puts
diamond(3)
puts
puts
diamond(9)

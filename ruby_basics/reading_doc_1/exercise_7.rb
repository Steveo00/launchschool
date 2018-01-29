# The default value does not need to appear first, but arguments with
# defaults must be grouped together.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# This will print [ 4, 5, 3, 6 ]

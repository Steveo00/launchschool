a = 7

def my_value(a)
  a += 10
end

my_value(a)

puts a

# prints 7
# the variable 'a' contained in the method definition is a local variable to
# the method. Similarly 'a' defined outside the method is a local variable not
# accessible inside the method.

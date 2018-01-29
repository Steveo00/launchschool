a = 7

def my_value(b)
  a = b
end

my_value(a + 5)

puts a

# prints 7
# Similar logic to previous execise. The 'a' assigned outside the method
# definition is not accessible to the 'a' variable defined inside the method.

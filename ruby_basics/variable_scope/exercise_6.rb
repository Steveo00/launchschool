a = 7

def my_value(b)
  b = a + a
end

my_value(a)

puts a

# Error
# 'a' is a local variable defined outside the method body and is therefore not
# accessible inside the method.

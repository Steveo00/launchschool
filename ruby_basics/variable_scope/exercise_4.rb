a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)

puts a

# prints 'Xy_zy'
# 'a' is a string which can be modifed by re-assignment (unlike an integer).
# The method call creates a variable 'b' which points to the same memory
# location as 'a'. The method mutates the string and as both variables are
# pointing to the same string when you print the object assigned to 'a'
# it prints the modified string.

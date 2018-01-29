a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)

puts a

# prints 'Xyzzy'
# Initially 'b' is referencing the same object as 'a'. However the method body
# is re-assigning the variable 'b' to a new object in a seperate memory
# location so that 'a' is unchanged.

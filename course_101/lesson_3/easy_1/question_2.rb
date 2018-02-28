# Describe the difference between ! and ? in Ruby.
# And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# ! as part of a method name generally indicates that the method mtates the caller
# ? as part of a method name indicates that the method returns a boolean value

# != means "not equal to" and should be used in a condition expresion
# ! at start turns the object into the opposite of their boolean equivalent
# ! at end often signifies that the method mutates the caller
# ? before something is usually in the ternary operator where the following
#    expession is evaluated if the conditional is true.
# ? after a method name usually indicates that the method will return a 
#   boolean expression
# !! at the start usually returns the boolen equivalent
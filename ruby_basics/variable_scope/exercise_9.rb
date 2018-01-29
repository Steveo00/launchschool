a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# prints 7
# This is because the 'a' in the block is a placeholder variable for
# each element in the array and is not the same as the 'a' defined outside 
# the method invocation.

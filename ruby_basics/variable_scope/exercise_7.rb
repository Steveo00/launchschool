a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Prints 3
# While method definitions can not access local variables assigned outside the
# method definition, method invocations with a block are able to access and
# modify local variables initialised outside the block.
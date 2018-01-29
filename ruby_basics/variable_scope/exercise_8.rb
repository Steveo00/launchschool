array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Error
# This is because 'a' was not initialised outside the block. Therefore 'a' is
# a local variable to the block.

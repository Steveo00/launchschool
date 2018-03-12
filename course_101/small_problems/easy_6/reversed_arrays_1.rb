# Write a method that takes an Array as an argument, and reverses its 
# elements in place; that is, mutate the Array passed into this method. 
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  left = 0
  right = -1

  while left < array.size/2
    array[left], array[right] = array[right], array[left]
    left += 1
    right -= 1
  end
  
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id
puts

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]
puts

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]
puts

list = []
reverse!(list) # => []
puts list == []

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

arr1 = []
arr2 = []

p rolling_buffer1(arr1, 5, 1)
p rolling_buffer2(arr2, 5, 1)

p arr1

p arr2

# the difference between the 2 methods is that the arr passed to the first 
# method is mutated while the the second method leaves the original array
# unchanged.

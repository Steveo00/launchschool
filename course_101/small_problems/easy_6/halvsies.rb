# Write a method that takes an Array as an argument, and returns two 
# Arrays that contain the first half and second half of the original Array, 
# respectively. If the original array contains an odd number of elements, 
# the middle element should be placed in the first half Array.

def halvsies(arr)
  arr_1 = []
  arr_2 = []

  if arr.size.odd?
    arr_1 = arr.shift((arr.size / 2) + 1)
    arr_2 = arr
  else
    arr_1 = arr.shift(arr.size / 2 )
    arr_2 = arr
  end

  [arr_1, arr_2]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]

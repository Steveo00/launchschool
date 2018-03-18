# A bubble sort works by making multiple passes (iterations) through the Array. On each 
# pass, each pair of consecutive elements is compared. If the first of the two elements is 
# greater than the second, then the two elements are swapped. This process is repeated 
# until a complete pass is made without performing any swaps; at that point, the Array is 
# completely sorted.

# We can stop iterating the first time we make a pass through the array without making 
# any swaps; at that point, the entire Array is sorted.

# Write a method that takes an Array as an argument, and sorts that Array using the 
# bubble sort algorithm as just described. Note that your sort will be "in-place"; that 
# is, you will mutate the Array passed as an argument. 

# You may assume that the Array contains at least 2 elements.

def bubble_sort!(array)
  loop do
    swap = false
    
    1.upto(array.size-1) do |index|
      next if array[index-1] < array[index]
      array[index-1], array[index] = array[index], array[index-1]
      swap = true
    end

    break if swap == false
  end
end

array = [3, 5]
bubble_sort!(array)
puts array == [3, 5]

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [5, 3, 2]
bubble_sort!(array)
puts array == [2, 3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
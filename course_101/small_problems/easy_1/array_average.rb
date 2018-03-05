# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive
# integers.

def average(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  average = sum / arr.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52])  == 40

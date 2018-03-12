# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ..)
# such that the first 2 numbers are 1 by definition, and each subsequent 
# number is the sum of the two previous numbers.

# Write a method that calculates and returns the index of the first 
# Fibonacci number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)


def find_fibonacci_index_by_length(num)
 first_fibonacci = 1
 second_fibonacci = 1
 index = 2

 loop do
   index +=1

   fibonacci = first_fibonacci + second_fibonacci
   break if fibonacci.to_s.size >= num

   first_fibonacci = second_fibonacci
   second_fibonacci = fibonacci
 end
 
 index
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847

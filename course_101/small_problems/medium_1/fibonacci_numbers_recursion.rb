# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number 
# is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th 
# is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# Write a recursive method that computes the nth Fibonacci number, where nth is an 
# argument to the method.

def fibonacci(num)
  return 1 if num < 3

  fibonacci(num-1) + fibonacci(num-2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
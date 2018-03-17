# In this exercise, you are going to compute a method that returns the last digit of the 
# nth Fibonacci number.

def fibonacci(number)
  return 1 if number == 1 || number == 2
  
  fib_array = [1, 1]

  3.upto(number) do |num|
    fib_array << (fib_array[num-2] + fib_array[num-3]) 
  end

  fib_array[number-2] + fib_array[number-3]
end

def fibonacci_last(number)
  fibonacci(number).to_s[-1].to_i
end

puts fibonacci_last(15) == 0
puts fibonacci_last(20) == 5 
puts fibonacci_last(100) == 5
puts fibonacci_last(100_001) == 1

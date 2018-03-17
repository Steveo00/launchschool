# Every recursive method can be rewritten as a non-recursive (procedural) method.
# Rewrite your recursive fibonacci method so that it computes its results without recursion.

def fibonacci(number)
  return 1 if number == 1 || number == 2
  
  fib_array = [1, 1]

  3.upto(number) do |num|
    fib_array << (fib_array[num-2] + fib_array[num-3]) 
  end

  fib_array[number-2] + fib_array[number-3]
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501

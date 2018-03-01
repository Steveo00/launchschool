limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# An error is raised becasue the variable limit initialised outside the method
# is not accessible inside the method.
# A fix would be to pass in the limit as an argumment to the method.

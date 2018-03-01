def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  # divisors
end


p factors(100)
p factors(16)
p factors(0)
p factors(-16)

# The purpose of number % dividend is used to determine if the result of
# the division is an integer

# The purpose of divisors in second last line of method is used to return
# an array of factors. Without this the method returns nil

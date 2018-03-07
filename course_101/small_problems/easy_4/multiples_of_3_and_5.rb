# Write a method that searches for all multiples of 3 or 5 that lie 
# between 1 and some other number, and then computes the sum of those 
# multiples. For instance, if the supplied number is 20, the result 
# should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multiples_of_3(num)
  array_of_3 = []
  counter = 3
  while counter <= num
    array_of_3 << counter
    counter += 3
  end
  array_of_3
end

def multiples_of_5(num)
  array_of_5 = []
  counter = 5
  while counter <= num
    array_of_5 << counter
    counter += 5
  end
  array_of_5
end

def multisum(num)
  sum = (multiples_of_3(num) + multiples_of_5(num)).uniq.inject(:+)
end

puts "Please enter a number greater than 1:"
number = gets.chomp.to_i
puts multisum(number)

puts

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# this code will print each of the four elements of numbers on their own.
# this is because uniq does not mutate the caller, in this case numbers.

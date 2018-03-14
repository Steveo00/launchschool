# Write a method that returns a list of all substrings of a string. The returned list 
# should be ordered by where in the string the substring begins. This means that all 
# substrings that start at position 0 should come first, then all substrings that start 
# at position 1, and so on. Since multiple substrings will occur at each position, the 
# substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous 
# exercise:

def substrings_at_start(string)
  array_of_strings = []
  count = 0

  loop do
    0.upto(count) do |idx|
      array_of_strings[idx] = string[0..idx]      
    end
    count += 1
    break if count == string.length
  end

  array_of_strings
end

def substrings(string)
  string_array = []

  while !string.empty?
    string_array = string_array + substrings_at_start(string)
    string = string.slice(1..string.size-1)
  end

  string_array
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

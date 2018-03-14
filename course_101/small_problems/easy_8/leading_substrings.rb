# Write a method that returns a list of all substrings of a string that start at the 
# beginning of the original string. The return value should be arranged in order from 
# shortest to longest substring.

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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
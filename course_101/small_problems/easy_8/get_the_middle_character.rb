# Write a method that takes a non-empty string argument, and returns the middle character 
# or characters of the argument. If the argument has an odd length, you should return 
# exactly one character. If the argument has an even length, you should return exactly 
# two characters.

def center_of(string)
  if string.size == 0
    string_center = string
  elsif string.size.odd?
    string_center = string[string.size / 2]
  else
    string_center = string[string.size / 2 - 1] + string[string.size / 2]
  end  
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'

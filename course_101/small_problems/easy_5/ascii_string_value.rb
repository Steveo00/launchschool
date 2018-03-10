# Write a method that determines and returns the ASCII string value of a
# string that is passed in as an argument. The ASCII string value is the 
# sum of the ASCII values of every character in the string. (You may use 
# String#ord to determine the ASCII value of a character.)

def ascii_value(str)
  sum = 0
  str.chars.each { |ch| sum += ch.ord }
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
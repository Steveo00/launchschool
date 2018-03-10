# Write a method that takes a string argument and returns a new string 
# that contains the value of the original string with all consecutive 
# duplicate characters collapsed into a single character. You may not 
# use String#squeeze or String#squeeze!.

def crunch(str)
  new_string = ''
  counter = 0
  while counter <= str.length - 1
    new_string << str[counter] unless str[counter] == str[counter + 1]
    counter += 1
  end
  new_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

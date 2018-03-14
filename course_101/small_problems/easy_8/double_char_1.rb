# Write a method that takes a string, and returns a new string in which every character 
# is doubled

def repeater(string)
  new_string = ''

  string.each_char do |ch|
    new_string << ch * 2
  end

  new_string  
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

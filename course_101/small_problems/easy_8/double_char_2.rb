# Write a method that takes a string, and returns a new string in which every 
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and 
# whitespace should not be doubled.

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  new_string = ''

  string.each_char do |ch|
    if CONSONANTS.include?(ch.downcase)
      new_string << ch * 2
    else
      new_string << ch
    end
  end

  new_string  
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

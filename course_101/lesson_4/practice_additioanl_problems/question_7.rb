# Create a hash that expresses the frequency with which each letter 
# occurs in this string:

statement = "The Flintstones Rock"

letter_count = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  letter_count[letter] = letter_frequency if letter_frequency > 0
end

p letter_count

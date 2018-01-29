word_array = []

loop do
  puts "Please enter a word:"
  word = gets.chomp.downcase
  word_array << word if word != ''
  break if word == ''
end

puts word_array.sort

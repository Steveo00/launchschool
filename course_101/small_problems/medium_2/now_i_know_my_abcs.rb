# This limits the words you can spell with the blocks to just those words that do not use 
# both letters from any given block. Each block can only be used once.
# Write a method that returns true if the word passed in as an argument can be spelled 
# from this set of blocks, false otherwise.

BLOCKS = [['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],
          ['F','S'],['J','W'],['H','U'],['V','I'],['L','Y'],['Z','M']]

def block_word?(string)
  string_array = string.upcase.split(//)
  result = []

  BLOCKS.select do |block|
    result << false if string_array.include?(block[0]) && string_array.include?(block[1])
    result << false if string_array.count(block[0]) > 1 || string_array.count(block[1]) > 1    
  end

  result.include?(false) ? false : true   
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts block_word?('boob') == false
puts block_word?('bab') == false

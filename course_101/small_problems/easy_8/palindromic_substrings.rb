# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it 
# does backwards. The return value should be arranged in the same sequence as the 
# substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention 
# to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In 
# addition, assume that single characters are not palindromes.

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

def palindromes(string)
  array_of_palindromes = []

  substrings(string).select do |str|
    array_of_palindromes << str if str == str.reverse && str.size > 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
 '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


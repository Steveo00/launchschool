# Using the each method, write some code to output all of the vowels from the strings.

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

vowels = 'aeiou'

hsh.each_value do |array|
  array.each do |string|
    string.chars.each do |ch|
      puts ch if vowels.include?(ch)
    end
  end
end


def long_upcase(word)
  if word.length > 10
    word = word.upcase
  else
    word
  end
end

puts long_upcase("hello world")
puts long_upcase("hello")

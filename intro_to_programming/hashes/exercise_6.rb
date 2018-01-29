words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

grouped_words = {}

words.each do |word|
  key = word.split('').sort.join
  if grouped_words.has_key?(key)
    grouped_words[key].push(word)
  else
    grouped_words[key] = [word]
  end
end

grouped_words.each do |k, v|
  puts
  p v
end
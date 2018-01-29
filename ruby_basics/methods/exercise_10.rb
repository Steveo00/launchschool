def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(word1, word2)
  "#{word1} went #{word2} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
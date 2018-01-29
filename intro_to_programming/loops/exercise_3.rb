pets = [ 'dog', 'cat', 'rabbit', 'pony', 'fish', 'snake' ]

pets.each_with_index do | pet, index |
  puts "#{index + 1}. #{pet}."
end

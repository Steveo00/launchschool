# The merge method combines two hashes into one leaving the calling hash unchanged.
# The merge! method performs the same function but is destructive in regards to
# the calling hash

quantity_of_fruit = { oranges: 2, apples: 5, lemons: 3}
quantity_of_vegetables = { carrots: 4, beans: 10, potatoes: 6 }

puts "Original hashes before non-destructive merge" 
p quantity_of_fruit
p quantity_of_vegetables
puts

merged_hash = quantity_of_fruit.merge(quantity_of_vegetables)

p merged_hash
puts "Original hashes afer non-destructive merge"
p quantity_of_fruit
p quantity_of_vegetables
puts

merged_hash = quantity_of_fruit.merge!(quantity_of_vegetables)
puts "Original hashes afer destructive merge"
p quantity_of_fruit
p quantity_of_vegetables

# quantity_of_fruit hash is now the merged hash
# quantity_of_vegetables is still the same.

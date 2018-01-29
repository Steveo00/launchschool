def greeting(name)
  "Hi #{name}. I hope you are well."
end

puts "What is your first name?"
first_name = gets.chomp

puts greeting(first_name)

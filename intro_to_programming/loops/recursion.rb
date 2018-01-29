def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

puts "Enter a number "
start = gets.chomp.to_i
doubler(start)

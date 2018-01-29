def countdown(num)
  if num == 0
   puts num
  else
    puts num
    countdown(num-1)
  end
end

puts "Please enter a number to start countdown =>"
countdown_start = gets.chomp.to_i
puts

countdown(countdown_start)

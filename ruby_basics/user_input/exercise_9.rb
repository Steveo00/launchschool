  loop do
    puts "How many output lines do you want? Enter a number >= 3. ( Q to quit)."
    number_of_lines = gets.chomp
    break if number_of_lines.downcase == 'q'
    puts "Thats not enough lines." if number_of_lines.to_i < 3 
    if number_of_lines.to_i >= 3
      number_of_lines.to_i.times { puts "Launch School is the best!" }
    end  
  end

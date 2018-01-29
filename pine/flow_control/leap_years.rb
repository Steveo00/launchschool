leap_year_array = []

puts "Please input your starting year"
starting_year = gets.chomp.to_i
puts "Please input your ending year"
ending_year = gets.chomp.to_i

year = starting_year

while year != ending_year + 1
  if year % 4 == 0
    if (year % 100 == 0 && year % 400 == 0 && year % 4 != 0 )
      leap_year_array << year
    end
    leap_year_array << year
  end
  year += 1
end

puts leap_year_array
def time_of_day(condition)
  if condition
    puts "It's day time"
  else
    puts "It's night time"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

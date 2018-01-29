def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# As per last exercise, the count_sheep method will pring 0, 1, 2, 3, 4 but in
# this case the last evaluated result of the coun_shep method is 10 so this will
# also be printed.
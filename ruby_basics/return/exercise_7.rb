def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# The count_sheep method iterates 5 times (which starts at 0). sheep is a
# placeholder variable and represents the count number of the iteration. Therefore
# 0, 1, 2, 3, 4 is printed from the method. We also know that each method has
# a return value which for the times method is the value of number of times
# it will iterate so 5 will also be printed.
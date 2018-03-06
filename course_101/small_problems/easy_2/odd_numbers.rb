# Print all odd numbers from 1 to 99, inclusive. All numbers should be
# printed on separate lines.

99.times do |index|
  puts "#{index + 1}" if index.even?
end

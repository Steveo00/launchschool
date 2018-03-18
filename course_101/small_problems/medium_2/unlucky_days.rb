# Write a method that returns the number of Friday the 13ths in the year given by an 
# argument. You may assume that the year is greater than 1752 (when the United Kingdom 
# adopted the modern Gregorian Calendar) and that it will remain in use for the 
# foreseeable future.
require 'date'

def friday_13th(year)
  count = 0

  date = Date.new(year, 1, 13)

  12.times do
    count += 1 if date.friday?
    date = date.next_month
  end

  count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

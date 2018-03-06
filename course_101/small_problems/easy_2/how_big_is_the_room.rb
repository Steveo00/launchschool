# Build a program that asks a user for the length and width of a room 
# in meters and then displays the area of the room in both square meters 
# and square feet.

# Note: 1 square meter == 10.7639 square feet

SQUARE_FEET_CONVERSION = 10.7639

puts "Enter the length of the room in metres:"
length = gets.chomp.to_f

puts "Enter the width of the room in metres:"
width = gets.chomp.to_f

puts "The area of the room is #{length * width} square metres (#{length * width * SQUARE_FEET_CONVERSION.round(2)} square feet)."

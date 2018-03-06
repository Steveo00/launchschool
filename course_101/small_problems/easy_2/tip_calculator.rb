# Create a simple tip calculator. The program should prompt for a bill
# amount and a tip rate. The program must compute the tip and then display
# both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

puts "The tip is $#{(bill * (tip_percentage / 100)).round(2)}."
puts "The total is $#{(bill + (bill * (tip_percentage / 100))).round(2)}."

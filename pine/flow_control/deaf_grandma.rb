ask_grandma = ''
bye_count = 0
year = 0

while bye_count < 3
  puts "What do you want to ask Grandma?"
  ask_grandma = gets.chomp
  bye_count += 1 if ask_grandma == "BYE"
  bye_count = 0 if ask_grandma != "BYE"

  if ask_grandma == ask_grandma.upcase
    break if bye_count == 3
    loop do
      year = rand(1951)
      break if year > 1929
    end    
    puts "NO. NOT SINCE #{year}!"
  else
    puts "HUH! SPEAK UP, SONNY!"
  end
end

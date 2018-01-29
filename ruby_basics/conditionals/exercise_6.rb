stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "Go!"
  when 'yellow'
    puts "Slow down!"
  when 'red'
    puts "Stop!"
  else
    puts "Something is wrong"
end

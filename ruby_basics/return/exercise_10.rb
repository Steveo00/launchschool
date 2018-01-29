def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# As the if conditional is always true, number = 1 which is also the return value
# of a variable assignment and therefore is the return value of the method 
# which is what is printed by puts
def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end

    equal_to_four(5)

# error message is because there is a missing end statement. The end statement in
# the code is mateched to the if statement. The additional end is needed to
# close the method definition.    
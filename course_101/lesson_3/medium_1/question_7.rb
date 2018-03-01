answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

p new_answer

# This code prints 34.
# the object that answer points to (42) before the method call is not mutate by
# the method as += is assignment which dosen't mutate the caller. new_answer is 50

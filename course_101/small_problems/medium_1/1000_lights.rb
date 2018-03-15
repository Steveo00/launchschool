# You have a bank of switches before you, numbered from 1 to n. Each switch is connected 
# to exactly one light that is initially off. You walk down the row of switches and 
# toggle every one of them. You go back to the beginning, and on this second pass, you 
# toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the 
# beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep 
# going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an 
# Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

def lights_on(number_of_switches)
  lights_are_on = []
  which_lights_are_on = []

  0.upto(number_of_switches-1) do |switch|
    lights_are_on << false
  end

  step_by = 1

  while step_by <= number_of_switches
    (step_by..number_of_switches).step(step_by) do |num|
      lights_are_on[num] = !lights_are_on[num]
    end
    step_by += 1
  end

  lights_are_on.each_with_index do |status, idx|
    which_lights_are_on << idx if status == true
  end

  which_lights_are_on
end

puts lights_on(5) == [1, 4]
puts lights_on(10) == [1, 4, 9]
puts lights_on(1000)

# Write a method that counts the number of occurrences of each element 
# in a given array.

# Once counted, print each element alongside the number of occurrences.

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
            'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  occurrences = {}
  vehicles.each do |vehicle|
    if occurrences[vehicle] == nil
      occurrences[vehicle] = 1
    else
      occurrences[vehicle] += 1
    end
  end

  occurrences.each { |type, number| puts "#{type} => #{number}" }
end

count_occurrences(vehicles)

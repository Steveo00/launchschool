# Add up all of the ages from the Munster family hash:

ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237 
}

total_age = 0

ages.each do | index, age |
  total_age += ages[index]
end

puts total_age

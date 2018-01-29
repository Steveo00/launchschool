quantity_of_fruit = { oranges: 2, apples: 5, lemons: 3}

quantity_of_fruit.select { | k, v | puts k }
quantity_of_fruit.select { | k, v | puts v }
quantity_of_fruit.select { | k, v | puts "The number of #{k} is #{v}." }

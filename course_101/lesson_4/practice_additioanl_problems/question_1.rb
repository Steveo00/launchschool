# Turn this array into a hash where the names 
# are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}

flintstones.each_with_index do | name, index |
  flint_hash[name] = index
end

p flint_hash

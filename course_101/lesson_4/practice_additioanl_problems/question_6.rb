# Amend this array so that the names are all shortened 
# to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

short_name = flintstones.map { |name| name[0,3] }

p short_name

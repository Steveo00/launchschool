a = %w(a b c d e)

# puts a.fetch(7)                          # throws an IndexError exception

puts a.fetch(7, 'beats me')              # prints 'beats me'

puts a.fetch(7) { |index| index**2 }     # prints 49

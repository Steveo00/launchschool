a = %w(a b c d e)

p a

new_a = a.insert(3, 4, 5, 6)

p a # this should show that a has been modifid by the insert method
p new_a

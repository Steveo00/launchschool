x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# the each method returns the original array unchanged as the each method does NOT
# mutate the caller.

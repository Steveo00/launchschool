a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)

puts a

# error message
# 'a' is a local varaiable and therefore not accessible inside the method. As a 
# result, 'a' has not been initialised inside the block so a += b causes the error.

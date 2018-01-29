def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# As in the previous exercise the count sheep method iterates via the times
# method but in this case the if statement sops after the 3rd iteration so
# 0, 1, 2 is printed. The method stops when return is executed. However as
# return didn't provide a value, then nil is returned which is then also printed. 
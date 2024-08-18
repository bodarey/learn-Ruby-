arr = [*1..50]
rezult = arr.each_with_object([]) do |n, m|
  m << n unless n.even?
end
puts rezult.inspect

n = gets.to_i
arr = [*1..n-1]
rez = (arr << n).concat(arr[0,n-1].reverse)
puts rez.inspect

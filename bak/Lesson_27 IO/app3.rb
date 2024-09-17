# puts File.size('text.txt')

a = ARGV
arr = ('1'..'10').include?(a[0][0]) ? a : [a[1], a[0]]

puts arr
file = arr[1]
size = arr[0].to_i

f = File.new(file, 'w')

loop do
  break if f.size >= size

  f.write 'a'
end

f.close

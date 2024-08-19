f = File.open('countries.txt', 'r+')
arr = []
while (line = f.gets)
  ll = line[/.+%/] # cutting the string until %
  l = ll.rpartition(/.* .* /) # cutting from the right through spaces
  first = l[0].rpartition(/( T |T |C |\d)/) # from result array cutting first element, so will remain only the name of country
  l[0] = first.last # last element from first divided array
  # puts l.inspect
  arr << [l[0].strip, l[1].strip.split(',').join('').to_i]

end
hh = arr.to_h
p hh

f.close

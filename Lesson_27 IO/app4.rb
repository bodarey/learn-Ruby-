file = ARGV[0] || 'exercices.txt'
arr = []
rez = []
File.open(file) do |f|
  f.each do |line|
    arr << [f.pos, line.size, line]
  end
  min, max = arr.minmax { |a, b| a[1] <=> b[1] }
  puts '         min max'
  puts '---[position in file, size of line]-------------'
  puts [min, max].inspect
  puts '----------------'
end

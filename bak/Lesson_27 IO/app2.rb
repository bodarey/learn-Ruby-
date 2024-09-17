file = ARGV[0] || 'test.txt'
arr = File.readlines(file).shuffle
File.open(file, 'w') do |f|
  f.puts arr[0]
end

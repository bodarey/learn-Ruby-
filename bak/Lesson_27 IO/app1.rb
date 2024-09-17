file = ARGV[0] || 'test.txt'
line = File.readlines(file).sample
puts line

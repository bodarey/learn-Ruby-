f = File.size ARGV[0] || 'test.txt'

if File.size(f) > 10


else

puts "File size is less than 10B and will not be devided"

end
f = ARGV[0] || 'test.txt'

if File.size(f) > 10

  str = (File.read f).chomp
  size = str.length
  n = size / 10
  puts n
  arr = []
  1.upto(9) do
    arr << str[0...n]
    str = str[n..-1]
  end
  arr << str          
  1.upto(10) do |i|
    name = i < 10 ? "f_x0#{i}.txt" : 'f_x10.txt'
    f = File.new(name, 'w')
    f.puts arr.shift
    f.close
  end

else

  puts 'File size is less than 10B and will not be devided'

end

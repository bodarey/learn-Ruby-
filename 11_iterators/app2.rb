arr = []
while 2 + 2 == 4
	puts "add a color"
	answer = gets.strip
	break  if answer.downcase == 'stop'
	arr << answer



end
puts '---------------initial array----------'
puts arr
puts '---------------sorted array----------'
a = arr.reject{|x| x ==''}.map {|x| x.strip}.uniq.sort

puts a.inspect

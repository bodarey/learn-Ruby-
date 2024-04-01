arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk arr
	arr.flatten!
	arr.each do |x|
		yield x
	end     
end

walk(arr) { |i| puts i }
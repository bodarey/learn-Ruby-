#show the next fibonaci number of a number
def fib n
	 if n == 0
	   return 0
	 elsif  n == 1
	   return 1
	 end 
	return (fib(n - 1)) + (fib(n-2))  	  
end

d = ARGV.shift.to_i
puts "the fibonnaci num of #{d} is #{fib d } "
puts "the next fibonaci num to #{d} is: "
puts fib(d + 1)                         
puts "the sum of all number fibonnaci up to #{d} is "
sum = (0..d).to_a.reduce{|sum,i| sum + fib(i)}
puts sum


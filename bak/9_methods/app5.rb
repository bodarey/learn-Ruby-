def fal2cel *param
#Celsius (°C) = (Temperature in degrees Fahrenheit (°F) - 32) * 5/9
arr = []
puts param.inspect
param.each do |t|
	c = (t - 32) * (5.0/9)
	arr << c
end
arr

end

def cel2fal *param
#F = C×(9/5)+32
arr = []
param.each do |t|	
	f = t * (9.0/5) + 32
	arr << f
end
arr

end
f = 5
c = 5
puts "farengheit to celsius of #{f} is #{fal2cel f,6,8 }"
puts "celsius to fagrengheit of #{c} is #{ cel2fal c}"
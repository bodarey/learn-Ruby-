=begin                                       
     all x 10.pow(24)
=end
hh ={
	Pluto: 	 	0.013, 	
	Moon: 	 	0.073, 	
	Mercury:  	0.33, 	
	Mars: 	 	0.642, 	
	Venus: 	 	4.87 ,	
	Earth: 	 	5.97, 	
	Uranus: 	86.8, 	
	Neptune:  	102, 	
	Saturn: 	568, 	
	Jupiter:  	1898 	
} 	
puts hh
arr = hh.to_a
arr.sort! {|a,b| a[1] <=> b[1]}
min_planet = arr[0..2]
max_planet = arr[-3..-1]
puts "3 planets with minimum mass are: #{min_planet.to_h} "
puts "---------------"
puts "3 planets with maximum mass are: #{max_planet.to_h} "



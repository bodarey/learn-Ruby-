# d=√((x2 – x1)² + (y2 – y1)²)
point1 = {x: 3, y: 7} 
point2 = {x: -1, y: 5}
# define a function to calculate the distance between 2 points
def distance_between_2_points(point1={x: 0, y:0}, point2={x: 0, y: 0})
	Math.sqrt((point2[:x] - point1[:x]).pow(2) + (point2[:y] - point1[:y]).pow(2))
end

puts  distance_between_2_points point1,point2
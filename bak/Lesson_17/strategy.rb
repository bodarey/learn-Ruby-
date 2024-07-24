
class RouteCar
	def use
	 puts "Route by car" 
	end		     	
end

class RouteBus
	def use
	 puts "Route by bus" 
	end
end	

class RouteWalk
	def use
	 puts "Route by walk" 
	end
end

class RouteTrain
	def use
	 puts "Route by Train" 
	end
end

class RoutePlane
	def use
	 puts "Route by plane" 
	end
end


class Context
	attr_accessor :route 
	def initialize strategy
		self.route = strategy
	end

	def go
		route.use	
	end
end


r1 = Context.new RouteWalk.new
r1.go
r1.route = RoutePlane.new
r1.go
r1.route = RouteCar.new
r1.go

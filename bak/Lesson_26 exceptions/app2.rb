class NotExistingPlanetException < Exception
end

class SolarSystem
  def initialize
    @planets = %w[Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune]
  end

  def method_missing(m)
    method = @planets.index(m.to_s.capitalize)
    puts '-------'
    # puts @planets.inspect
    answer = method ? method + 1 : NotExistingPlanetException.new('not an existing planet in solar system')
  end
end

p = SolarSystem.new
# p.mercury
puts p.neptun

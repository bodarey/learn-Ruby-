class Factory
  @@toys = { teddy_bear: 0, ball: 0, cube: 0 }
  @@total = 0
  def initialize; end

  def self.build(toy) # :teddy_bear, :ball, :cube
    case toy
    when :teddy_bear
      add_item toy = Teddy_bear.new
      @@total += 1
      toy
    when :ball
      add_item toy = Ball.new
      @@total += 1
      toy
    when :cube
      add_item toy = Cube.new
      @@total += 1
      toy
    end
  end

  def self.add_item(toy)
    @@toys[:teddy_bear] += 1 if toy.is_a?(Teddy_bear)
    @@toys[:ball] += 1 if toy.is_a?(Ball)
    @@toys[:cube] += 1 if toy.is_a?(Cube)
  end

  def self.offers
    @@toys
  end
 def self.total
    @@total
 end	

  class Teddy_bear
  end

  class Ball
  end

  class Cube
  end
end

Factory.build :ball
Factory.build :cube
Factory.build :cube
puts "these are offers from factory:    #{ Factory.offers}"
puts "was made:    #{Factory.total} toys"

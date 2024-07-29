class Vector
  def initialize(a, b)
    @a = a
    @b = b
  end

  def distance
    Math.sqrt((@b.x - @a.x).pow(2) + (@b.y - @a.y).pow(2))
  end

  class Point
    attr_accessor :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end

  # d=√((x2 – x1)² + (y2 – y1)²
end

a = Vector::Point.new 0, 0
b = Vector::Point.new 7, 0

v = Vector.new a, b
puts v.distance

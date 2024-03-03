# frozen_string_literal: true

# (3, 6) и (-1, 5)
class Point
  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def get_x
    @x
  end

  def get_y
    @y
  end

  def get_coord_point
    [@x, @y]
  end

  def distance_to_other_point(point)
    Math.sqrt((point.get_x - @x).pow(2) + (point.get_y - @y).pow(2))
  end
end

point1 = Point.new(3, 6)
point2 = Point.new(-1, 5)
puts point2.distance_to_other_point(point1)

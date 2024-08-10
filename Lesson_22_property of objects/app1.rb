class Cube
  attr_reader :x, :y, :z, :l

  private_class_method :new
  def initialize(x, y, z, l)
    @x = x
    @y = y
    @z = z
    @l = l
  end

  def self.create(x, y, z, l)
    @cubs ||= []
    obj = nil
    @cubs.each do |cube|
      obj = cube if cube.x == x && cube.y == y && cube.z == z && l == cube.l
    end
    unless obj
      obj = new(x, y, z, l)
      @cubs << obj
    end
    obj
  end
end
c1 = Cube.create 0, 0, 0, 10
c2 = Cube.create 0, 0, 0, 10
c3 = Cube.create 1, 0, 0, 11
puts c1.object_id
puts c2.object_id
puts c3.object_id

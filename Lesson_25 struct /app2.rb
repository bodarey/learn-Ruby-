require 'ostruct'
class Table
  attr_reader :x, :y, :ships

  def initialize(x = 10, y = 10)
    @x = x
    @y = y
    @ships = []
  end

  def add_atomSubmarine(x = rand(1..@x), y = rand(1..@y))
    obj = OpenStruct.new rockets: rand(1..30), torpeds: rand(1..20)
    set_objectPosition obj, x, y
  end

  def add_rocketCreiser(a = rand(1..@x), b = rand(1..@y))
    obj = OpenStruct.new rockets: rand(1..30)
    set_objectPosition obj, a, b
  end

  def add_militaryTransport(x = rand(1..@x), y = rand(1..@y), cargo = 1, cran = 1)
    obj = OpenStruct.new cargoHold: cargo, crane: cran
    set_objectPosition obj, x, y
  end

  def showScheme
    str = ''
    1.upto(@x) do |x|
      str = ''
      1.upto(@y) do |y|
        @ships.each do |ship|
          (ship.x == x and ship.y == y) ? (str += 'x') : ()
        end
        str += '.'
      end
      puts str.center(20, '.')
    end
  end

  private

  def get_coordinate(x, y)
    while true
      @ships.each do |ship|
        next unless ship.x == x && ship.y == y

        x = rand(1..10)
        y = rand(1..10)
        get_coordinate x, y
      end
      return [x, y]
    end
  end

  def set_objectPosition(obj, x, y)
    obj.x, obj.y = get_coordinate x, y
    @ships << obj
  end
end

t = Table.new
t.add_atomSubmarine
t.add_atomSubmarine
t.add_atomSubmarine
t.add_rocketCreiser
t.add_rocketCreiser
t.add_rocketCreiser
t.add_militaryTransport
t.add_militaryTransport
t.add_militaryTransport

puts t.ships
t.showScheme

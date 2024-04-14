class User
  attr_accessor :name, :family, :midle

  def initialize(nname = '', family = '', midle = '')
    @name = nname
    @family = family
    @midle = midle
  end

  def to_s
    "#{@name} #{@family} #{@midle}"
  end
end

u = User.new 'name', 'family', 'midle'

puts u.name if __FILE__ == $0

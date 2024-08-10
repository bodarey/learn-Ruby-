class User
  attr_accessor :name, :family, :age, :position

  def initialize(name, familyname, age = nil, position = nil)
    @name = name
    @family = familyname
    @age = age
    @position = position
  end
end

class Group
  include Enumerable
  def initialize
    @list = []
  end

  def each(&block)
    @list.each(&block)
  end

  def add_user(user)
    @list << user
  end

  def delete_user
    @list[user].delete if @list.include? user
  end

  def show_users
    @list
  end
end

u1 = User.new 'Jhon', 'Travolta'
u2 = User.new 'Dave', 'McDonald'
g = Group.new
g.add_user u1
g.add_user u2
p(g.show_users.map { |x| x.name })
puts '---------------'
g.each { |x| puts x.family }

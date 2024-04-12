require_relative 'app2'

class Group
  def initialize *args
    @params = args
  end

  def each(&block)
    @params.each(&block) if block_given?
    @params
  end

  def add_users *args
    @params.concat args
  end
end

u1 = User.new 'user1', 'family1', 'midle1'
u2 = User.new 'user2', 'family2', 'midle2'
u3 = User.new 'user3', 'family3', 'midle3'
g = Group.new u1, u2, u3, u1
g.add_users u3, u3
g.each { |i| puts i.name }

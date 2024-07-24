# frozen_string_literal: true

class Person
  attr_accessor :name, :family, :middle
  private :initialize

  def initialize(name = '', family = '', middle = '')
    @name = name
    @family = family
    @middle = middle
  end
  private_class_method :new
end

################################
class User < Person
  public_class_method :new
  def initialize *args
    super args
  end
end

################################
class Admin < Person
  public_class_method :new
  def initialize *args
    super args
  end
end

################################
class Moderator < Person
  public_class_method :new
  def initialize *args
    super args
  end
end
################################
# u =  Person.new 'name1'
# puts u
p = User.new 'name1'
puts p.name

# a = Admin.new 4

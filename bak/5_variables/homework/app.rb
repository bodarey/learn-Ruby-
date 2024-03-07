# frozen_string_literal: true

class User
  def initialize(name = 'Andrian', lastname = 'Bodareu')
    @name = name
    @lastname = lastname
  end

  def to_s
    "#{@name} #{@lastname}"
  end
end

user = User.new('my_firstname', 'my_lastname')
puts user

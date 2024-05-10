# frozen_string_literal: true

class SampleUser
  attr_accessor :name, :family, :email

  def initialize(name = '', family = '', email = 'exemple@exemple.com')
    @name = name
    @family = family
    @email = email
  end

  def say
    puts self.class
  end

  def to_s
    say
  end
end

########################
class User < SampleUser
end

########################
class Autor < SampleUser
end

########################
class Moderator < SampleUser
end

########################
class Administrator < SampleUser
end
########################
admin = Administrator.new 'nume', 'prenume', 'email@email.com'
puts admin.say
moderator = Moderator.new 'nume1', 'prenume1', 'email1@email.com'
puts moderator.say

user = User.new 'nume2', 'prenume2', 'email2@email.com'
puts user.say

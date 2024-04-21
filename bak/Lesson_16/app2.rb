class User
attr_accessor :name, :family, :middle, :email
  def initialize  name ='',family = '',middle = '',email = ''
        @name = name
	@family = family
	@middle = middle
	@email	= email
	yield self if block_given?		
  end
end
u = User.new {|user| user.name = 'Nume' }
puts u.name

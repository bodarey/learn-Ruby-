class UserException < Exception
end

class User
  def initialize(first_name, last_name, email)
    raise UserException.new('letters for name are incorect') unless (first_name.match(/[a-zA-Z]/) and last_name.match(/[a-zA-Z]/) and email.match(/@/) )
  end
end

firstname = gets.strip
lastname = gets.strip
email = 'email@email.com'

obj = User.new firstname, lastname, email

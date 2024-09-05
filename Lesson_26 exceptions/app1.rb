class UserException < Exception
end

class User
  def initialize(first_name, last_name, email)
    raise UserException.new(' name and/or email are incorect') unless (first_name.match(/[a-zA-Z]/) and last_name.match(/[a-zA-Z]/) and email.match(/@.+\./) )
  end
end

puts 'please insert first name, last name and e-mail'
firstname = gets.strip
lastname = gets.strip
email = gets.strip

obj = User.new firstname, lastname, email

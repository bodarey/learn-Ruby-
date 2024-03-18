class User
def initialize(surname,familyname,midlename)
	@surname = surname
	@familyname =  familyname
	@midlename = midlename
end

def to_s
"name: #{@surname} familyname: #{@familyname} midlename: #{@midlename} "
end

end
arr =[]

puts 'insert data for a user, (stop for exit)'
n = nil
while (n!= 'stop')

puts 'add surname:'
surname =  gets.strip
puts 'add familyname'
familyname = gets.strip
puts 'midlename'
midlename =  gets.strip
puts 'add stop or enter'

arr << User.new(surname, familyname, midlename)
n = gets.strip.downcase
end


puts arr

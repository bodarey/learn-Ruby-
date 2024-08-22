require 'set'
Keywords = Set.new
puts "please insert a keyword | 'e' for exit"
str = ''

while  (str != 'e') & (str != 'E')
  temp = Keywords.map(&:downcase)
  Keywords << str unless temp.include? str.downcase
  str = gets.strip
end
Keywords.delete ''
puts Keywords

# frozen_string_literal: true

puts 'enter first number:'
a = gets.to_f
puts 'enter second number different from 0'
while (b = gets.to_f).zero?
  puts 'enter number different from 0'
end
puts
print "#{a} divided by #{b} is:  ", a / b
puts

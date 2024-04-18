# frozen_string_literal: true

define_method :convert do |*args|
  
  puts "#{args[0]}: #{args[0].to_s(2)}"
  puts "#{args[1]}: #{args[1].to_s(8)} "
  puts "#{args[2]}: #{args[2].to_s(16)} "
end

send(:convert, 100, 144, 64)



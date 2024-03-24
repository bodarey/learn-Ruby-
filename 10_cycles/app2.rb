# frozen_string_literal: true

arr = Array.new(10) { rand(0..99) }
puts arr.inspect
puts '--------------------'
puts "minimum element of the array is: #{arr.min}"
puts "maximum element of the array is: #{arr.max}"

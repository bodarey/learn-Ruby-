# frozen_string_literal: true

# add in command age.rb year month day
a = ARGV
today = Time.now
birth = Time.new(a[0], a[1], a[2])
puts "your age is: #{today.year - birth.year}"

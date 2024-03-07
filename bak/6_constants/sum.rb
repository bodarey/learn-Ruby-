# frozen_string_literal: true

arr = ARGV

puts arr.inject(0) { |sum, n| sum + n.to_i }

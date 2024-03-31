# frozen_string_literal: true

(1..7).select(&:even?).reduce do |m, x|
  puts "debug: #{x}"
  m + x
end

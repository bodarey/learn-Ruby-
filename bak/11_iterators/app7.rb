# frozen_string_literal: true

arr = %w[january february march april may june july august september october november december]
min = arr.min { |a, b| a.size <=> b.size }
max = arr.max { |a, b| a.size <=> b.size }
puts "min = #{min} "
puts "max = #{max}"

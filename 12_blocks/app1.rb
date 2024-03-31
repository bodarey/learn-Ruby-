# frozen_string_literal: true

# my_map

def my_map(arr = [])
  result = []
  arr.each do |x|
    result << (yield x)
  end
  result
end
arr = [*1..10]
puts my_map(arr) { |x| x * x }

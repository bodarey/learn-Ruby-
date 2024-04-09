# frozen_string_literal: true

module Enumerable
  def my_select
    if block_given?
      arr = []
      each do |x|
        arr << x if yield x
      end
      return arr.to_h if instance_of?(Hash)

      arr
    else
      self
    end
  end
end

arr = [*1..10]
puts(arr.my_select(&:even?))
hh = { a: 1, b: 2, c: 4 }
puts '------------------'
puts hh.my_select { |_x, v| v.even? }.inspect

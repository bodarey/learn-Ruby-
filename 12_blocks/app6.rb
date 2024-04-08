# frozen_string_literal: true

require 'date'

def week(n)
  arr = []
  1.upto(7) do |x|
    dd = Date.commercial(Time.new.year, n.to_i, x)
    arr << dd
    yield  dd if block_given?
  end
  arr
end
week(50) { |i| puts i }

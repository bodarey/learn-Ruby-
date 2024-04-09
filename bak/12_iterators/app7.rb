# frozen_string_literal: true

require 'date'

def weekends(&block)
  year = Time.new.year
  arr = []

  1.upto(52) do |i|
    day1 = Date.commercial(year, i, 6)
    day2 = Date.commercial(year, i, 7)
    arr << day1
    arr << day2
    arr << "\n"
  end
  arr.each(&block) if block_given?
  arr
end

block = proc { |i|
  print i
  print ' '
}
 weekends(&block)

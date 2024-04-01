# frozen_string_literal: true

# my_map
class Array
  def my_map
    if block_given?
      result = []
      each do |x|
        result << (yield x)
      end
      result
    else
      self
    end
  end
end

###############################################
def my_map(arr = [])
  if block_given?
    result = []
    arr.each do |x|
      result << (yield x)
    end
    result
  else
    arr
  end
end
###############################################
arr = [*1..10]
puts my_map(arr) # { |x| x * x }
puts '--------------------------------------'
puts(arr.my_map { |x| x.pow(2) })

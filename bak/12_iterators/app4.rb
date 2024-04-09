# frozen_string_literal: true

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(arr, &block)
  arr.flatten!
  arr.each(&block)
end

walk(arr) { |i| puts i }

# frozen_string_literal: true

def fib(n, &block)
  arr = Array.new(n)
  arr[0] = 0
  arr[1] = 1
  2.upto(n) do |i|
    arr[i] = (arr[i - 1] + arr[i - 2])
  end
  arr.each(&block)
end
fib(10) { |i| print "#{i} " }
puts

# frozen_string_literal: true

# my_reduce

module Enumerable
  def my_reduce(*args)
    operation = lambda { |s, n = nil|
      case s
      when :+  then !n ? my_reduce(&:+) : my_reduce(n, &:+)
      when :*  then !n ? my_reduce(&:*) : my_reduce(n, &:*)
      when :/  then !n ? my_reduce(&:/) : my_reduce(n, &:/)
      when :%  then !n ? my_reduce(&:%) : my_reduce(n, &:%)
      end
    }
    if block_given?
      m = args[0] || shift
      each do |x|
        m = yield m, x
      end
      m
    else
      args[0].is_a?(Symbol) ? operation.call(args[0]) : operation.call(args[1], args[0])
    end
  end
end

a = [*1..10]
# b = a.my_reduce([]) { |m, x| m << x + x }
b = a.my_reduce(:+)
puts b

###############################################

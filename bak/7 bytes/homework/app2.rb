# frozen_string_literal: true

def my_even(n)
  a = (n & 1)
  a.zero?
end

puts my_even(11)

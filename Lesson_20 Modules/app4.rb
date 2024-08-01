#require 'pry-byebug'
module RomanNumbers
  def roman(num = self)
    r = [
      { 1 => 'I' },
      { 4 => 'IV' },
      { 5 => 'V' },
      { 9 => 'IX' },
      { 10 => 'X' },
      { 40 => 'XL' },
      { 50 => 'L' },
      { 90 => 'XC' },
      { 100 => 'C' },
      { 400 => 'CD' },
      { 500 => 'D' },
      { 900 => 'CM' },
      { 1000 => 'M' }
    ]
    str = ''
    i = 0
    n = num
    arr = r.reverse
    while n > 0
      # binding.pry
      while i < arr.length
        if arr[i].keys[0] <= n
          str += arr[i].values[0]
          n -= arr[i].keys[0]
          break
        end
        i += 1
      end
    end
    str
  end
end
class Integer
   include  RomanNumbers
end

puts 101.roman





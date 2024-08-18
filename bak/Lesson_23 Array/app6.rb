class Integer
  def to_a(level = 2)
    temp = to_s(level)
    rez = temp.split('')
    a = rez.map(&:to_i)
  end
end

a = 7
puts 115_469.to_a.inspect

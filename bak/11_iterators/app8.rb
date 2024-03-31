# frozen_string_literal: true

class User
  attr_accessor :name, :family_name, :midle_name, :mark

  def initialize(name, family_name, midle_name, mark)
    @name = name
    @family_name = family_name
    @midle_name = midle_name
    @mark = (mark.between? 1, 5) ? mark : nil
  end

  def to_s
    "#{@name}\t #{@family_name}\t #{@midle_name}\t  #{@mark}"
  end
end

arr = []
1.upto(10) do |i|
  arr << User.new("name#{i}", "family_name#{i}", "midle_name#{i}", rand(1..5))
end
avg = arr.reduce(0) { |sum, x| sum + x.mark }.to_f / arr.size

result = arr.select { |x| x.mark > avg }
puts "average mark is: #{avg}\n\n"
puts "-------users with marks bigger than average are ------------------\n\n"
puts result

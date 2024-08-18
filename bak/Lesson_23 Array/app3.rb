# require 'pry-byebug'
arr = [*1..10]
def get_submatrix(arr)
  rez ||= []
  temp = []

  arr.each do |x|
    # binding.pry

    temp << x

    if temp.size == 3
      rez << temp
      temp = []
    end
  end
  rez.inspect
end

puts get_submatrix arr

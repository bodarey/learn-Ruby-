class Matrix
  def initialize(n)
    @n = n
  end

  def set(arr = Array.new(@n) { Array.new(@n) { |_x| rand(1..10) } })
    i = 0
    sum = 0
    while i < @n
      sum += arr[i][i]
      i += 1
    end
    @arr = arr
    @sum = sum
  end

  def get
    @arr.each do |line|
      line.each do |x|
        print "#{x}\t"
      end
      puts
    end
  end

  def get_sum
    @sum
  end
end

m = Matrix.new 10
m.set
m.get
p m.get_sum

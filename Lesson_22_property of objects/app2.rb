class Text
  def initialize(n = 3)
    @n = n
    @list = Hash.new(0)
  end

  def getText
    rez = ''
    1.upto(@n) do
      str = gets.strip
      @list[str] += 1 unless str.match?(/[^A-z]/)
    end
    arr = @list.to_a
    arr.sort! { |a, b| a[0] <=> b[0] }
    arr.each do |x|
      rez += x[1] < 2 ? "\n#{x[0]}" : "\n#{x[0]}(#{x[1]})"
    end
    rez
  end
end

t = Text.new 10

puts t.getText

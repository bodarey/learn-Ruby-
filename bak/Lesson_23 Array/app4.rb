class Array
  def for(n, &block)
    i = 1
    rez = []
    temp = clone

    while i <= n
      # rez.flatten!
      rez << temp
      i += 1
      rez.flatten!
    end
    return unless block_given?

    rez.each(&block)

    # puts
    # puts rez
  end
end

a = [*'A'..'Z']
a.for(3) { |x| print "#{x} " }

puts
puts '========================'
[*'A'..'Z'].cycle(3) { |x| print "#{x} " }

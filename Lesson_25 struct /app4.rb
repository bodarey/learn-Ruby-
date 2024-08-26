class Table
attr_accessor :a
  @@n = 10
  @@m = 10
  def  initialize
    @n = @@n + 2
    @m = @@m + 2
    @a = Array.new(@n) { Array.new(@m) }
    i = 0
        while i < @n 
        j = 0

       while j < @m
       a[i][j] = '.'
      @a[i][j] = '*' if (i == 0 || j == @n-1 || i == @m-1 || j== 0)
     # @a[i][j] = 'x' if ()
      j += 1
      end
      i += 1
    end
  end

  def show_matrix
    i = 0
    puts "     A B C D E F G H I J"
    while i < @n 
        j = 0
      (i == 0 or i == @n-1) ? (print "   ") : (print "#{i} ".ljust(3) )
      while j < @m
      print "#{@a[i][j]} " 
            j += 1
      end

      i += 1
  puts
    end
   
  end
end
t = Table.new
t.show_matrix
#puts t.a.inspect

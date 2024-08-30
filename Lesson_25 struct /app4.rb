class Ship
  private_class_method :new

  def initialize; end

  def self.create(arr, x, y, sizze, position)
    @condition = '.'
    @n = 10
    @m = 10
    # arr[1][3]= 0
    if position == :o
    i =y
    #while i <= (y+(sizze-1)) 
      y.upto(y + (sizze - 1)) do |i|
puts "--#{i}---------"
        # puts arr[x][i].inspect
        # checking on horizontal line from left to right
        if (arr[x][i] != @condition) || (x == 1 ? false : arr[x - 1][i] != @condition) || (x == 10 ? false : arr[x + 1][i] != @condition)
          return false
        end
      i+=1
      end
      # checking the left and right side of the ship

      if (y == 1 ? false : (arr[x][y - 1] != @condition)) || (y + sizze == @n + 1 ? false : arr[x][y + sizze] != @condition)
       return false
     end
      # checking top left corner
      return false if x == 1 && y == 1 && arr[x + 1][y + sizze] != @condition

      # checking the right top corner
      return false if y > 1 && (x == 1 && y + sizze - 1 == @n && arr[x + 1][y - 1] != @condition)
      # checking left botom corner
      return false if x > 1 && (x == @m && y == 1 && arr[x - 1][y + sizze] != @condition)
      # checking right bottom corner
      return false if x > 1 and y > 1 && (x == @m && (y + sizze - 1 > @n or arr[x - 1][y - 1] != @condition))

      if y > 1 && y+sizze<@n && (x == 1 && arr[x + 1][y + sizze] != @condition or arr[x + 1][y - 1] != @condition)
        # ship is on the top checking intersection corners on right and left bottom
        return false
      end
      # ship is on the bottom checking intersection on left and right top
      if x > 1 and  y+sizze < @m and y > 1 && (x == @n && arr[x - 1][y - 1] != @condition or arr[x - 1][y + sizze] != @condition)
        return false
      end
      # ship is on the left checking the intersection right top and bottom
      return false if x > 1 && x<@n && (y == 1 && arr[x - 1][y + sizze] != @condition or arr[x + 1][y + sizze] != @condition)
      # ship is on the right checking intersection top left
      return false if x > 1 and y > 1 && (y == @m && arr[x - 1][y - 1] != @condition)
      # ship is on the right checking intersection bottom left
      return false if y > 1 && x<@n && (y == @m && arr[x + 1][y - 1] != @condition)
      # checking around the ship on intersection when ship is not on margins
      if x > 1 and y > 1 && x<@n && (arr[x - 1][y - 1] != @condition or arr[x + 1][y - 1] != @condition or arr[x - 1][y + sizze] != @condition or arr[x + 1][y + sizze] != @condition)
        return false
      end

      y.upto(y + sizze - 1) do |j|
        arr[x][j] = 'X'
      end

    elsif position == :v

    end

    # arr = ['ddd']

    arr
  end
end

##############################
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
        @a[i][j] = '*' if i == 0 || j == @n - 1 || i == @m - 1 || j == 0
        j += 1
      end
      i += 1
    end
  end

  def show_matrix
    if @a == false
      puts '----false---'
      return false
    end

    i = 0
    puts '     A B C D E F G H I J'
    while i < @n
      j = 0
      (i == 0 or i == @n - 1) ? (print '   ') : (print "#{i} ".ljust(3))
      while j < @m
        print "#{@a[i][j]} "
        j += 1
      end
      i += 1
      puts
    end
  end

  def self.get_a; end

  def self.set_a(a)
    @a = a
  end
end
# ##########################################3
t = Table.new
t.show_matrix
t.a = Ship.create t.a, 1, 1, 1, :o
t.a = Ship.create t.a, 1, 10, 1, :o
t.a = Ship.create t.a, 10, 1, 1, :o
t.a = Ship.create t.a, 10, 10, 1, :o
 t.a = Ship.create t.a,4,8,2,:o

t.show_matrix

# puts t.a.size

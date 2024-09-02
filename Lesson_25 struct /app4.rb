class Ship
  private_class_method :new

  def initialize; end

  def self.create(arr, x, y, sizze, position)
    @condition = '.'
    @n = 10
    @m = 10
    # arr[1][3]= 0
    if position == :o
      i = y
      # while i <= (y+(sizze-1))
      y.upto(y + (sizze - 1)) do |i|
        # puts "--#{x}-#{y}-#{sizze}-------"
        # puts arr[x][i].inspect
        # checking on horizontal line from left to right
        if (arr[x][i] != @condition) || (x == 1 ? false : arr[x - 1][i] != @condition) || (x == 10 ? false : arr[x + 1][i] != @condition)
          return false
        end

        i += 1
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

      if y > 1 && y + sizze - 1 < @n && (x == 1 && (arr[x + 1][y + sizze] != @condition or arr[x + 1][y - 1] != @condition))
        # ship is on the top checking intersection corners on right and left bottom
        return false
      end
      # ship is on the bottom checking intersection on left and right top
      if x > 1 and y + sizze - 1 < @m and y > 1 && (x == @n && (arr[x - 1][y - 1] != @condition or arr[x - 1][y + sizze] != @condition))
        return false
      end
      # ship is on the left checking the intersection right top and bottom
      if x > 1 && x < @n && (y == 1 && (arr[x - 1][y + sizze] != @condition or arr[x + 1][y + sizze] != @condition))
        return false
      end
      # ship is on the right checking intersection top left
      return false if x > 1 and y > 1 && (y + sizze - 1 == @m && arr[x - 1][y - 1] != @condition)
      # ship is on the right checking intersection bottom left
      return false if y > 1 && x < @n && (y + sizze - 1 == @m && arr[x + 1][y - 1] != @condition)
      # checking around the ship on intersection when ship is not on margins
      # puts '-----------------'
      #      puts   x>1
      # puts y > 1
      # puts x < @n && y + sizze <= @m
      # puts arr[x - 1][y - 1] != @condition
      # puts arr[x + 1][y - 1] != @condition
      # puts arr[x - 1][y + sizze] != @condition
      # puts  arr[x + 1][y + sizze] != @condition
      # puts '------------------'

      if x > 1 and y > 1 && x < @n && y + sizze <= @m && (arr[x - 1][y - 1] != @condition or arr[x + 1][y - 1] != @condition or arr[x - 1][y + sizze] != @condition or arr[x + 1][y + sizze] != @condition)
        return false
      end

      y.upto(y + sizze - 1) do |j|
        arr[x][j] = 'X'
      end

    #######################################################################
    elsif position == :v

      i = y
      # while i <= (y+(sizze-1))
      x.upto(x + (sizze - 1)) do |i|
        # puts "--#{x}-#{y}-#{sizze}-------"
        # puts arr[x][i].inspect
        # checking on horizontal line from top to bottom
        if (arr[i][y] != @condition) || (y == 1 ? false : arr[i][y - 1] != @condition) || (y == 10 ? false : arr[i][y + 1] != @condition)
          return false
        end

        i += 1
      end
      # checking the top and bottom side of the ship

      if (x == 1 ? false : (arr[x - 1][y] != @condition)) || (x + sizze == @n + 1 ? false : arr[x + sizze][y] != @condition)
        return false
      end

      # checking top left corner
      return false if x == 1 && y == 1 && arr[x + sizze][y + 1] != @condition

      # checking the right top corner
      return false if y == @m && (x == 1 && arr[x + sizze][y - 1] != @condition)
      # checking left botom corner

      return false if x == @m && y == 1 && arr[x - sizze][y + 1] != @condition
      # checking right bottom corner

      return false if y == @m && x + sizze - 1 == @n and arr[x - 1][y - 1] != @condition

      if y > 1 && y < @m && x == 1 && (arr[x + sizze][y + 1] != @condition or arr[x + sizze][y - 1] != @condition)
        # ship is on the top checking intersection corners on right and left bottom
        return false
      end
      # ship is on the bottom checking intersection on left and right top
      if y > 1 && y < @m and x + sizze - 1 == @n && ((arr[x - 1][y - 1] != @condition or arr[x - 1][y + 1] != @condition))
        return false
      end
      # ship is on the left checking the intersection right top and bottom
      if x > 1 && x + sizze - 1 < @n && (y == 1 && (arr[x - 1][y + 1] != @condition or arr[x + sizze][y + 1] != @condition))
        return false
      end
      # ship is on the right checking intersection top left  and bottom
      if x > 1 && x + sizze - 1 < @n && y == @m && (arr[x - 1][y - 1] != @condition or arr[x + sizze][y - 1] != @condition)
        return false
      end

      if x > 1 and y > 1 && y < @n && x + sizze <= @n && (arr[x - 1][y - 1] != @condition or arr[x - 1][y + 1] != @condition or arr[x + sizze][y - 1] != @condition or arr[x + sizze][y + 1] != @condition)
        return false
      end

      x.upto(x + sizze - 1) do |i|
        arr[i][y] = 'X'
      end
      #####################################################

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

1.upto(50) do |_k|
  x = rand(1..10)
  y = rand(1..10)
  dim = rand(1..4)
  variant = %i[o v]
  op = variant[rand(0..1)]
  #  puts "_#{x}__#{y}__#{dim}_____"
  Ship.create t.a, x, y, dim, op if Ship.create t.a, x, y, dim, op != false
end

# Ship.create t.a, 1, 7, 2,:o
# Ship.create t.a, 2, 4, 3,:o

t.show_matrix

# puts t.a.size

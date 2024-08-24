n = 20
m = 20
a = Array.new(n) { Array.new(m) }
@count = 0
##############################################################
def print_table(a)
  puts '   a  b  c  d  e  f  g  h'
  print ' '
  a.each_with_index do |newarray, index|
    print "#{index + 1} "
    newarray.each_with_index do |el, _ind|
      el ? (print 'Q') : (print '...')
    end
    puts
    print ' '
  end
end

# print_table a
##############################################################
def pos_available?(a, row, col)
  # chicking horizontal lin
  i = 0
  while i < a.size
    return false if a[i][col] or a[row][i]

    i += 1
  end
  # checking diagonal o top left
  i = row
  j = col
  while i >= 0 and j >= 0
    return false if a[i][j]

    i -= 1
    j -= 1
  end
  # checking diagonal o bottom left
  i = row
  j = col
  while i < a.size and j >= 0
    return false if a[i][j]

    i += 1
    j -= 1
  end
  true
end

##############################################################
def findQvariant(a, col)
  return true if col >= a.size

  i = 0
  while i < a.size
    if pos_available?(a, i, col)
      a[i][col] = true
      if col == a.size - 1
        print_table a
        @count += 1
        puts @count
      end
      findQvariant(a, col + 1)
      a[i][col] = nil
    end
    i += 1
  end
end
##############################################################
############################################################
findQvariant(a, 0)

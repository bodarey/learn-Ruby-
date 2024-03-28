# frozen_string_literal: true

# require 'date'
# require 'pry'
####################################

def calendar(t = Time.new)
  wday = %w[Mo Tu We Th Fr Sa Su]
  month = %w[January Februay March April May June July August September October November
             December]
  # t = Time.new
  t1 = Time.new(t.year, t.month, 1)
  puts
  puts "    #{month[t.month - 1]} #{t.year}"
  wday.each do |day|
    print "#{day} "
  end
  puts
  i = 0
  st = t1.wday
  while t1.month == t.month
    i += 1
    # day = t1.day
    if	i >= st
      (print "#{format('%2d', t1.day)} ")
      begin
        t1 = Time.new(t1.year, t1.month, t1.day + 1)
      rescue StandardError
        puts
        break
      end

    else
      (print format('%3s', ''))
    end
    puts if (i % 7).zero?

  end
  puts
end

######################################
def calendar_reverse(t = Time.new)
  wday = %w[Mo Tu We Th Fr Sa Su]
  month = %w[January Februay March April May June July August September October November December]
  a = []
  # arr[0] = '  '
  t1 = Time.new(t.year, t.month, 1)
  puts
  print "    #{month[t.month - 1]} #{t.year}"
  puts
  i = 0
  st = t1.wday
  while t1.month == t.month
    i += 1
    if i >= st
      a.push t1.day
      begin
        t1 = Time.new(t1.year, t1.month, t1.day + 1) 
      rescue  Exception =>ex
      #  puts ex.message 
        break
      end
    else
      a << ' '
    end
  end

  i = 0
  while i < wday.size
    puts format('%2s %2s %2s %2s %2s %2s', wday[i], a[i], a[i + 7], a[i + 14], a[i + 21], a[i + 28])
    i += 1
  end
end
######################################

Time.new

calendar Time.new(2024, 1, 1)

calendar_reverse Time.new(2024, 1, 1)

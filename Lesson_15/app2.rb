
a = %i(first second third)
@i = 0
hh = a.reduce([]) {|h,item| h << [item,@i+=1]}
puts hh.to_h

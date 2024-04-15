hh = %w[first second third]

u = hh.reduce([]){|h,item| h << [item.to_sym, "#{item.to_s[0].capitalize}#{item.to_s[-2..-1]}  (#{(hh.index(item)+1)})"] }.to_h
puts u.inspect
list = -> { Dir['*jpeg', '*jpg', '*png', '*gif', '*svg'].sample }

puts list.call

class Integer
   def my_pow(n)
        rez = 1
	n.times { rez = rez * self } 
       # puts rez
	rez
   end
end
5.my_pow(2)

a = 10.my_pow(2)
puts a
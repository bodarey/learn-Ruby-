class Foo
#@h = {:test => :delta}   
#def initialize options
#   @hh = options
#	create
#end         
def initialize options
@h = options
#puts options
#puts @h.size
   a

end
 def a

@h.each do |key,value|
   key = (key.class == 'Symbol')? key : key.to_sym
  # puts key
   def method_missing key
   @h[key] || @h[key.to_s]
    #value
 #   puts @h
   end
end
    end


end
x ={test2: :delta, test1: :beta}
f = Foo.new  x
puts f.test1

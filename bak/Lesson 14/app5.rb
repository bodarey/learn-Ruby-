
class List

attr_accessor :params 
   def initialize *params
   @params = params
   end

 def method_missing (name, *args)
  @params.each do |i|
    yield i if block_given?

  end
  @params
 end


end

l = List.new  :a, :b
block = proc {|i| puts i}
l.each(&block)
#puts l.params.class

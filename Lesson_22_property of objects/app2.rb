class Text

  def initialize n = 3
    @n = n
    @list = Hash.new(0)
  end
 def getText
    1.upto(@n) do 
      str = gets.strip
       
       
      
      @list[str]+=1 unless str.match?(/[^A-z]/)
      
    end
 arr = @list.to_a
 arr.sort!{|a,b| a[0]<=>b[0]}
 arr
 end
end

t = Text.new 

puts t.getText.inspect
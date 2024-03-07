# frozen_string_literal: true

class Hello
  def hello
    t = Time.now
    now = case
      when (6..12).include?(t.hour) 
  	then  (t.hour == 12 && t.sec >=0) ? 'afternoon' : 'morning'
      when (12..18).include?(t.hour)	
	then  (t.hour == 18 && t.sec >=0) ? 'evening' : 'afternoon'
      when (18..00).include?(t.hour)		
	then  (t.hour == 00 && t.sec >=0) ? 'night' : 'evening'	
      when (0..6).include?(t.hour)
	then  (t.hour == 6 && t.sec >=0) ? 'morning' : 'night'		  

      end
    puts now	
  end
end
       

# method type return the type of the string format depends of the regexp
def type str 
	return 'integer' if (str.match?(/^(\-|\+)[1-9]+$/) || str.match?(/^[1-9]+$/))
 
	return 'real' if  (   str.match?(/^(\-|\+)[1-9]+\.[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+$/) || 
     	   str.match?(/^(\-|\+)[1-9]+\.[1-9]+e(\-|\+)[1-9]+$/) || str.match?(/^(\-|\+)[1-9]+\.[1-9]+e[1-9]+$/)||
	   str.match?(/^[1-9]+\.[1-9]+e(\-|\+)[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+e[1-9]+$/)    ) 

	'string'
end

              
puts type ARGV.shift






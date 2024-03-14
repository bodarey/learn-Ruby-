def type(str)
  return 'integer' if str.match?(/^(-|\+)[1-9]+$/) || str.match?(/^[1-9]+$/)

  return 'real' if  str.match?(/^(-|\+)[1-9]+\.[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+$/) ||
                    str.match?(/^(-|\+)[1-9]+\.[1-9]+e(-|\+)[1-9]+$/) || str.match?(/^(-|\+)[1-9]+\.[1-9]+e[1-9]+$/) ||
                    str.match?(/^[1-9]+\.[1-9]+e(-|\+)[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+e[1-9]+$/)

  'string'
end
n = ARGV.shift
(type(n) =='integer') ? ( n.to_i.even? ? (puts 'number is even') : ( puts 'number is odd ') ) : (puts 'this is not an integer number')

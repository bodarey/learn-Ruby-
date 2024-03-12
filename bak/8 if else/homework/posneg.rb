# frozen_string_literal: true

# return type of string chars
def type(str)
  return 'integer' if str.match?(/^(-|\+)[1-9]+$/) || str.match?(/^[1-9]+$/)

  return 'real' if  str.match?(/^(-|\+)[1-9]+\.[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+$/) ||
                    str.match?(/^(-|\+)[1-9]+\.[1-9]+e(-|\+)[1-9]+$/) || str.match?(/^(-|\+)[1-9]+\.[1-9]+e[1-9]+$/) ||
                    str.match?(/^[1-9]+\.[1-9]+e(-|\+)[1-9]+$/) || str.match?(/^[1-9]+\.[1-9]+e[1-9]+$/)

  'string'
end

if type(ARGV[0]) == 'integer' || (type(ARGV[0]) == 'real')
  ARGV[0][0] == '-' ? (puts 'number is negative') : (puts 'number is positive')
else
  puts 'this is not a number'
end

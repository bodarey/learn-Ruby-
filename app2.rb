# connect the library stringio
require 'stringio'
# redirect the output of the data 
$stdout = StringIO.new
#this string will not apear on the scrin
$stdout.puts 'Hello, world!'
# the data that was captured on $stdout will be redirected to a file
File.write('output.log', $stdout.string)
#$stdout.string captured the output from program and save it to variable str
str = $stdout.string
#redircting $stdout to the constant STDOUT to console
$stdout = STDOUT
puts str
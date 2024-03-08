# frozen_string_literal: true

figure = 'point'
coord  = [0, 255]
color = 'yellow'

# return a string that is a 8 characters long and if is less then is added in front with 0
def get_char_to_bytes(chr)
  chr.ord.to_s(2).rjust(8, '0')
end

# return a string with the same caharcteristic as is for get_char_to_bytes function
def get_number_to_bytes(n)
  n.to_s(2).rjust(8, '0')
end

def encode(figure, coord, color)
  bytes_figure = figure.chars.map { |i| get_char_to_bytes(i) }.join # get a long string of 0 and 1
  bytes_coord = coord.map { |i| get_number_to_bytes(i) }.join # get a long string of 0 and 1
  bytes_color = color.chars.map { |i| get_char_to_bytes(i) }.join # get a long string of 0 and 1
  open_pharan = get_char_to_bytes('(') # delimiter for reference in the code
  close_pharan = get_char_to_bytes(')') # delimiter on right side for reference in the code
  bytes = bytes_figure + open_pharan + bytes_coord + close_pharan + bytes_color
  bytes.to_i(2) << 7 # shifting the bytes
end

def decode(num)
  bytes = num
  byte = bytes >> 7 # shifting back with 2 bytes
  temp = byte.to_s(2) # making a string of 0 and 1
  temp = "0#{temp}" while temp.size % 8 != 0
  bytes = temp.scan(/......../) # making an array of string  each with length of 8
  first = []
  second = []
  third = []
  bytes.each do |item|
    if second.empty? && third.empty? && item.to_i(2) != 40
      first << item
    elsif third.empty? && item.to_i(2) != 41
      second << item
    else
      third << item

    end
  end
  second.shift    # deleting first element from array is '('
  third.shift     # deleting first element from aray is ')'
  obj = first.reduce('') { |str, i| str + i.to_i(2).chr }
  coord = second.map { |i| i.to_i(2).ord }
  color = third.reduce('') { |str, i| str + i.to_i(2).chr }

  [obj, coord, color]
end
cod = encode figure, coord, color
puts "number to code: (#{figure}) (#{coord}) (#{color}) is: #{cod}"

print "the decoded number #{cod} is:  #{decode(cod)}"
puts

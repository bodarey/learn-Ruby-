require 'exifr/jpeg'
require 'exif'

file = ARGV[0] || 'sample.jpg'
begin
  if data = Exif::Data.new(File.open(file))
  end
rescue Exception => e
  puts e.message
  exit
end

puts data.to_h
puts '-------date time if persists-------------------'
puts data.date_time

file = ARGV[0] || 'test.txt'
size = lambda do |f|
s = File.size(f)
  result = if s > 1024 * 1024
             "#{s.to_f / (1024 * 1024)} Mb"
           elsif s > 1024
             "#{s.to_f / 1024} Kb"
           else
             "#{s} B"
           end
  result
end

puts size.call file

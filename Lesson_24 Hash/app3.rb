authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan',
                                      'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

hh = Hash.new(0)
authors.each do |_k, v|
  v.each do |auth|
    hh[auth] += 1
  end
end

puts hh
a = hh.sort_by { |_k, v| v }.sort{|a,b|  a[0]<=>b[0] if a[1] == b[1] }
puts a.inspect

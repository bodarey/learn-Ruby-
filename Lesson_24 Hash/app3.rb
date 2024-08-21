authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan',
                                      'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Cookbdook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Under a Microscopeo' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}


def sort_hash(hash)
  hh = Hash.new(0)

  hash.each do |_k, v|
    v.each do |auth|
      hh[auth] += 1
    end
  end
  a = hh.sort_by { |_k, v| v } # sort by numbers of books
  max = a.max { |a, b| a[1] <=> b[1] } # find the maximum number of books
  max = max[1] # get the maximum number from max array of books
  i = 0
  result = {}
  temp = []
  while i < a.size - 1
    temp << a[i]
    unless a[i][1] == a[i + 1][1]
      temp.sort! { |a, b| a[0] <=> b[0] }
      if a[i][1] < max   # the array of maximum number of elements  will remain out of checking
        result.merge! temp.to_h
        temp = []
      end
    end  
    i += 1
  end
  temp << a.last
  result.merge! temp.sort { |a, b| a[0] <=> b[0] }.to_h
  end

puts sort_hash authors

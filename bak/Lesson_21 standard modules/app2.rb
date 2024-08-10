class News
  attr_accessor :name, :body, :time

  include Comparable
  def initialize(name, body, time = Time.new)
    @name = name
    @body = body
    @time = time
  end

  def <=>(other)
    @time <=> other.time
  end
end

n1 = News.new 'today', 'some text'
n2 = News.new 'yesterday', 'text'
puts n1 < n2

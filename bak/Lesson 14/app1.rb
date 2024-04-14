class Hello
  attr_accessor :message

  def initialize(text)
    @message = text
  end

  def to_s
    "hello #{@message}"
  end
end
h = Hello.new 'world'
# def h.say
#    puts "hello #{self.message}"
# end
#
class << h
  def say
    puts "hello #{message}"
  end
end

h.say
puts h
puts '--------------------'
h2 = Hello.new 'test'
puts h2

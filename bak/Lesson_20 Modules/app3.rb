module Fiveble
  @@obj = 0
  @@n = 2

  def create
    if @@obj > @@n - 1
      puts "there can be created objects in number of #{@@n} or less"
      return nil
    end
    @@obj += 1
    new
    # puts @@obj.inspect
    # puts @@n.inspect
  end

  def state
    "there is max. #{@@n} object #{@@obj} that can be created"
  end
end

class Fives
  extend Fiveble
  private_class_method :new
end

f1 = Fives.create
p f1.object_id

f2 = Fives.create
p f2.object_id

f3 = Fives.create
p f3.object_id
# puts '----'

# f4 = Fives.create
# p f4.object_id

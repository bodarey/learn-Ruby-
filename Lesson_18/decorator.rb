module DecoratorPattern
  class Source
    def initialize(line)
      @line = line
    end

    def show
      @line
    end

   # def to_s
    #  "source: #{@name}"
    #end
  end

  module Decorator
    def initialize(source)
      @source = source
    end

    def show
      raise 'method show must be defined'
    end
  end

  class DecorateImage
    include Decorator
    def show
      "image decoration #{@source.show}"
    end
  end

  class DecorateFlower
    include Decorator
    def show
     "flower decoration #{@source.show}"
    end
  end

  def self.run
    source = Source.new 'my source'

   # img = DecorateImage.new source
   # flower = DecorateFlower.new source
   imgandflower = DecorateFlower.new(DecorateImage.new(source))
    puts imgandflower.show
  end
end

DecoratorPattern.run

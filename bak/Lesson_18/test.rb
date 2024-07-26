module DecoratorPattern
  # Extends basic functionallity combining several Decorators

  class Source
    def initialize(line)
      @line = line
    end

    def write_line
      @line
    end
  end

  # Abstract Decorator
  module Decorator
    def initialize(source)
      @source = source
    end

    def write_line
      raise NotImplementedError
    end
  end

  # Concrete Decorator
  class Upcaser
    include Decorator

    def write_line
      @source.write_line.upcase
    end
  end

  # Concrete Decorator
  class Timestamper
    include Decorator

    def write_line
      "#{Time.now.strftime('%H:%m')} #{@source.write_line}"
    end
  end

  # Concrete Decorator
  class Datestamper
    include Decorator

    def write_line
      "#{Time.now.strftime('%d.%m.%y')} #{@source.write_line}"
    end
  end

  def self.run
    puts '=>  Decorator'

    source = Source.new('Lorem ipsum dolor sit amet')
    puts "Source:\n=>  #{source.write_line}"

    upcased = Upcaser.new(source)
    puts "Upcased:\n=>  #{upcased.write_line}"

    timestamped = Timestamper.new(source)
    puts "Timestamped:\n=>  #{timestamped.write_line}"

    datestamped = Datestamper.new(source)
    puts "Datestamped:\n=>  #{datestamped.write_line}"

    upcased_timestamped = Timestamper.new(Upcaser.new(source))
    puts "Upcased and timestamped:\n=>  #{upcased_timestamped.write_line}"

    upcased_datestamped_timestamped = Datestamper.new(Timestamper.new(Upcaser.new(source)))
    puts "Upcased, datestamped and timestamped:\n=>  #{upcased_datestamped_timestamped.write_line}"

    datestamped_timestamped = Datestamper.new(Timestamper.new(source))
    puts "Datestamped and timestamped:\n=>  #{datestamped_timestamped.write_line}"

    puts ''
  end
end

DecoratorPattern.run 

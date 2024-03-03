# frozen_string_literal: true

class Car
  @@counter = 0
  @@type = { sedan: 0 }
  @@number_of_wheels = { one: 0, two: 0, three: 0, four: 0 }
  @@engine_type = { petrol: 0, diesel: 0, electric: 0, hibrid: 0 }
  @@status = { new: 0, used: 0 }
  @@models = {}

  @engine_type = 'set type'
  @status = 'set status'

  def initialize(model = 'model', name = 'car')
    @name = name
    @model = model
    @@counter += 1
    set_details
  end

  def set_type(type = ' sedan')
    type = type.to_sym
    @@type[type] += 1 if @@type[type] || (@@type[type] = 0)
    @type = type
  end

  def set_engine_type(type)
    type = type.to_sym
    @@engine_type[type] += 1 if @@engine_type[type] || (@@engine_type[type] = 0)
    @engine_type = type
  end

  def set_status(status)
    @status = status
    status = status.to_sym
    @@status[status] += 1 if @@status[status] || (@@status[status] = 0)
  end

  def set_number_of_wheels(n)
    @number_of_wheels = n
    case n
    when 1
      @@number_of_wheels[:one] += 1
    when 2
      @@number_of_wheels[:two] += 1

    when 3
      @@number_of_wheels[:three] += 1

    when 4
      @@number_of_wheels[:four] += 1

    end
  end

  def set_color(color)
    @color = color
  end

  def get_color
    @color
  end

  def get_status
    @status
  end

  def get_engine_type
    @engine_type
  end

  def get_model
    @model
  end

  def get_type
    @type
  end

  def get_name
    @name
  end

  def self.get_number_of_cars
    @@counter
  end

  def self.get_all_cars_details
    rez = []
    rez << ['number of cars',
            @@counter] << ['type of cars',
                           @@type] << ['number of wheels',
                                       @@number_of_wheels] << ['engine type',
                                                               @@engine_type] << ['stus of the cars',
                                                                                  @@status] << ['models of cars',
                                                                                                @@models]
    rez
  end

  private

  def set_details
    if @@models.include? @model
      @@models[@model] += 1
    else
      @@models[@model] = 1

    end
  end
end

a = Car.new 'Wolksvagen', 'golf'

b = Car.new 'Audi', 'A4'
a.set_engine_type 'diesel'
a.set_status 'new'
a.set_type 'sedan'

b.set_engine_type 'hydrogen'
b.set_number_of_wheels 4
b.set_type 'hatchback'
b.set_status 'used'

c = Car.new 'Audi', 'A1'
c.set_status 'damaged'
c.set_type 'sedan'
puts '------------------------------'
# puts Car.get_number_of_cars
puts Car.get_all_cars_details
# puts Car.class_variables

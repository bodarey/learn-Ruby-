# frozen_string_literal: true

class Building
  attr_reader :status

  @@created_buildings = 0

  def initialize(name, region, status)
    @status = status
    @name = name
    @region = region
    @@created_buildings += 1
  end
end

b = Building.new 'house', 'Maldive', 'new'
puts b.status

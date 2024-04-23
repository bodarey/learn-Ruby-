class Vessel
  attr_accessor :rockets

  def initialize(options)
    @rockets = options[:rockets]
  end
end

###################################
class Underwater < Vessel
  attr_accessor :torpeds

  def initialize(options)
    super options
    @torpeds = options[:torpeds]
  end
end

###################################
class OnWater < Vessel
  attr_accessor :cargo_hold, :crane

  def initialize(options)
    @cargo_hold = options[:cargo_hold]
    @crane = options[:crane]
  end
end

###################################
class AtomSubmarine < Underwater
  def initialize(options)
    super options
  end

  def to_s
    puts "rockets: #{@rockets || 0}, torpeds: #{@torpeds || 0}"
  end
end

#################################
class DryVesselGrain < OnWater
  def initialize(options)
    super options
  end
undef_method :rockets
end
#################################
class ContainerTransporter
def initialize  options
super options
undef_method :rockets
undef_method :cargo_hold
end

#################################
#################################

u = AtomSubmarine.new torpeds: 10
puts u

# frozen_string_literal: true

class Vessel
  attr_accessor :rockets, :torpeds, :cargo_hold, :crane

  def initialize(options)
    @rockets = options[:rockets]
    @torpeds = options[:torpeds]
    @cargo_hold = options[:cargo_hold]
    @crane = options[:crane]
  end

  def to_s
    puts "rockets: #{@rockets || 0}, torpeds: #{@torpeds || 0} cargo_hold: #{@cargo_hold || 0} crane: #{@crane || 0}"
  end
end

###################################
class Underwater < Vessel
end

###################################
class OnWater < Vessel
end
atom_submarine = Underwater.new rockets: 10, torpeds: 9
dry_cargo_grain = OnWater.new cargo_hold: 1, creane: 1
container_transporter =  OnWater.new crane: 1
oil_tanker = OnWater.new cargo_hold: 2
rocket_cruiser = OnWater.new rockets: 30
military_transport = OnWater.new rockets: 10, cargo_hold: 5, crane: 1
puts atom_submarine
puts dry_cargo_grain
puts container_transporter
puts oil_tanker
puts rocket_cruiser
puts military_transport

# puts u

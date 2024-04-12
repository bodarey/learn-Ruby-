# frozen_string_literal: true

class SahMat
  attr_reader :name

  @@figures = []
  @@figures_num = 0

  def initialize(name)
    @name = name
    @@figures_num += 1
    @@figures << self
  end

  def move; end

  def sah; end

  def mat; end

  def delete; end

  def figures
    @@figures
  end
end

figure = SahMat.new 'horse'
puts figure.name
puts figure.figures

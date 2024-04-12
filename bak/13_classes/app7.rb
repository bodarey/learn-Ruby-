# frozen_string_literal: true

class Material
  def initialize(status)
    @status = case status
              when :gaz then :gaz
              when :liquid then :liquid
              when :solid then :solid
              else 'materials must be symbols :gaz, :liquid or :solid'
              end
  end

  def solid
    @status = :solid
  end

  def liquid
    @status = :liquid
  end

  def gaz
    @status = :gaz
  end

  ###########

  def melt
    @status = :liquid if @status == :solid
  end

  def boild
    @status = :gaz if @status == :liquid
  end

  def freeze
    @status = :solid if @status == :liquid
  end

  def condense
    @status = :liquid if @status == :gaz
  end

  def deposit
    @status = :solid if @status == :gaz
  end

  def sublime
    @status = :gaz if @status == :solid
  end

  attr_reader :status
end
m = Material.new :gaz
m.condense
puts m.status

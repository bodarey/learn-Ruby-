# frozen_string_literal: true

class Week
  Week = %w[Monday Tuesday Wensday Thursday Friday Saturday Sunday].freeze
  def initialize; end

  def each(&block)
    Week.each(&block) if block_given?
    Week
  end
end

w = Week.new

w.each { |i| puts i }

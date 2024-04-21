# frozen_string_literal: true

class Integer
  def kilobytes
    self * 1024
  end

  def megabytes
    self * 1024 * kilobytes
  end

  def gigabytes
    self * 1024 * megabytes
  end

  def terabytes
    self * 1024 * gigabytes
  end
end

puts 5.kilobytes
puts 5.megabytes
puts 5.gigabytes
puts 5.terabytes

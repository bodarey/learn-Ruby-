# frozen_string_literal: true

class Time
  def hello
    t = Time.new.hour
    case t
    when 6..12 then puts 'good morning'
    when 12..18 then puts 'good afternoon'
    when 18..0 then puts 'good evening'
    when 0..6 then puts 'good night'
    end
  end
end

t = Time.new

t.hello

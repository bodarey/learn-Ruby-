# frozen_string_literal: true

def max_integer(arr)
  flag = 1
  ARGV.each { |item| item&.chars { |ch| flag = nil unless ('1'..'9').include?(ch) } }
  case arr[0].to_i
  when Integer
    case arr[1].to_i
    when Integer
      case arr[2].to_i
      when Integer
        return ARGV.max if flag
      end
    end
  end
  'not integer'
end
puts ARGV.inspect
puts max_integer ARGV

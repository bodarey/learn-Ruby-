# frozen_string_literal: true

arr = %w[monday tuesday wensday thuersday friday saturday sunday]
puts(arr.select { |x| x[0].downcase == 's' })

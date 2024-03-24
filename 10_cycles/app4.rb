# frozen_string_literal: true

require 'date'
def this_week
  d = Date.today
  d_start = d.prev_day(d.wday) + 1
  # puts d_start
  d_end = d_start + 7
  weekstart = d_start.strftime('%d-%m-%y')
  weekend = d_end.strftime('%d-%m-%y')
  puts "#{weekstart} - #{weekend}"
end

this_week

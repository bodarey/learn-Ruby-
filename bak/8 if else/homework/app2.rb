# frozen_string_literal: true

def week(n)
  case n
  when 1 then 'Monday'
  when 2 then 'Tuesday'
  when 3 then 'Wensday'
  when 4 then 'Thursday'
  when 5 then 'Friday'
  when 6 then 'Saturday'
  when 7 then 'Sunday'
  end
end
puts week 3

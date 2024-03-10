# frozen_string_literal: true

# (1 —красный, 2 — оранжевый, 3 — желтый, 4 — зеленый, 5 — голубой, 6 — синий,7 — фиолетовый)

def colors(n)
  case n
  when 1 then 'red'
  when 2 then 'orange'
  when 3 then 'yellow'
  when 4 then 'green'
  when 5 then 'blue'
  when 6 then 'violet'
  end
end

puts colors(7).inspect

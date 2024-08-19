colors = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}

keys = colors.keys
values = colors.values
hh = colors.map { |k, v| [v, k] }.to_h
puts keys
puts '---------------'
puts values
puts '---------------'
puts hh.inspect

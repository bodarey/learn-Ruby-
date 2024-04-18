a = %w[red orange yellow green gray indigo violet]

b = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

d =  a.map{|i| i.to_sym}.zip(b).to_h 

puts d
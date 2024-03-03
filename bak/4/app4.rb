morning = (7..12).to_a
day = (12..17).to_a
evening =(17..22).to_a
night = (22..24).to_a.concat (1..1).to_a
early_morning= (1..7).to_a
print "morning \t#{morning.to_s}"
puts
print "day \t\t#{day}"
puts
print "evening\t \t#{evening}"
puts
print "night \t\t#{night} "
puts
print "early_morning \t#{early_morning}"
puts

#ejercicio6
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
caro = restaurant_menu.max_by { |key, valor| valor }
puts "el plato mas caro es"
print caro[0]
puts
barato = restaurant_menu.min_by { |key, valor| valor }
puts "el plato mas barato es"
print barato[0]
puts
puts "el promedio del valor de los platos es"
total = restaurant_menu.inject(0) { |sum, (key, value)| sum + value}
 promedio = total.to_f / restaurant_menu.length
puts promedio
nombres = []
restaurant_menu.each{ |key, valor| nombres.push(key)}
puts nombres 

valores = []
restaurant_menu.each{ |key, valor| valores.push(valor)}
puts valores 
puts
restaurant_iva = restaurant_menu.map{|k, v| restaurant_menu[k]=(v*=1.19)}
print restaurant_iva
puts

special = restaurant_menu.reject{ |k, v| k.split.size > 1}
special.each{ |k, v| special[k] = v * 0.8}
puts special

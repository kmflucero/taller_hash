#ejercicio2
1)
productos = {
	bebida: 850,
    chocolate: 1200,
    galletas: 900,
    leche: 750
}
productos.each do |key, value|
 puts value
end
#2)
productos[:cereal] = 2200
#3)
productos[:bebida] = 2000
print productos
puts 
#4)
print productos.to_a
puts 
#5)
productos.delete(:galletas)
print productos
puts
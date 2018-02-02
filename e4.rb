#ejercicio4
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
nuevos = personas.zip(edades)
diccionario = nuevos.to_h
print diccionario
total = diccionario.inject(0) do |sum, (llave, valor)|
	sum + valor
end
puts total.to_f / diccionario.length
#ejercicio5
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
array = meses.zip(ventas)
nuevohash = array.to_h
puts nuevohash
hashinvertido = nuevohash.invert
puts hashinvertido
valormax = hashinvertido.max_by { |key, valor| key }
puts valormax[1]
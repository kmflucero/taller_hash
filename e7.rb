inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
opcion = 0
while opcion != 7
  puts "Menú"
  puts "1. ingresar"
  puts "2. eliminar"
  puts "3. actualizar"
  puts "4. stock total"
  puts "5. material con mayor stock"
  puts "6. consultar producto"
  puts "7. salir"

  opcion = gets.chomp.to_i

  case opcion
    when 1 # if opcion == 1
      puts 'opción1 - ingrese un elemento (ejemplo: celular,100)' # imprime opción 1
      r = gets.chomp # obtiene string por teclado y guarda
      array = r.split(',') # divide el sting según el argumento entre paréntesis
      inventario[array[0].to_sym] = array[1].to_i # guarda en inventario
      puts inventario # imprime inventario
      
    when 2 # if opcion == 2
      puts "opción 2 - eliminar un item"
      puts inventario
      puts "ingrese elemento a eliminar"
      eliminar = gets.chomp.to_sym
      inventario.delete(eliminar)
      puts inventario

    when 3 # if opcion == 3
      puts "opción 3 - actualizar"
      item = gets.chomp.to_sym # => "celular\n" => "celular" => :celular
      nuevo_valor = gets.chomp.to_i # => "200\n" => "200" => 200
      inventario[item] = nuevo_valor
      puts inventario

    when 4 #if opcion == 4
      puts "opción 4 - visualizar stock total"
      acumulador = 0
      inventario.each do |key, value| # recibe claves y valores        
        acumulador = acumulador + value
      end
      puts "el stock total es de: #{acumulador}"
      
    when 5
      puts "opción 5 - seleccionar item con mayor cantidad de stock"
      mayor = 0
      inventario.each do |llave, valor|
        mayor = valor if valor > mayor 
      end
      puts "el mayor es: #{mayor}"

    when 6
      puts "opción 6 - buscar un producto"
      clave_buscada = gets.chomp.to_sym
      encontrada = false
      inventario.each do |clave, valor|
        encontrada = true if clave == clave_buscada
      end
      puts  encontrada ? "el artículo #{clave_buscada} fue encontrada" : "el artículo #{clave_buscada} NO fue encontrado"

    when 7 
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end
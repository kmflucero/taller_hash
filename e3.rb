#ejercicio3
h = {"x": 1, "y":2}
#1)
h[:z] = 3
print h
puts
#2)
h[:x] = 5
print h
puts
#3)
h.delete(:y)
print h
puts
#4)
puts "yeaah!" unless h[:z].class.nil?
#5)
print h.invert
puts 
restaurant_menu = {"Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2}
print restaurant_menu

puts "\n1. Obtener el plato mas caro"
r = restaurant_menu.values.max
puts restaurant_menu.select{|k,v| v==r }.keys

puts "2. Obtener el plato mas barato"
r = restaurant_menu.values.min
puts restaurant_menu.select{|k,v| v==r }.keys

puts "3. Sacar el promedio del valor de los platos"
cant = 0
restaurant_menu.each {|k,v| cant+=v}
puts cant.to_f/restaurant_menu.length

puts "4. Crear un arreglo con solo los nombres de los platos"
print platos = restaurant_menu.keys

puts "\n5. Crear un arreglo con solo los valores de los platos"
print platos = restaurant_menu.values

puts "\n6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)."
print restaurant_menu.each{|k,v| restaurant_menu[k]=v.to_f*1.19}

puts "\n7.Dar descuento del 0.20 para los platos que tengan un nombre de mas 1 una palabra"
restaurant_menu.map{|k,v|
	if k.split.length>1
		restaurant_menu[k]=v*0.80
	end
}
print restaurant_menu
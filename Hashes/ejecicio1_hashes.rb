print hash = {"x":1, "y":2}

puts "\n1. Agregar el texto z con el valor 3"
print hash["z"]=3

puts "\n2. Cambiar el valor de x por 5"
print hash[:x]=5

puts "\n3. Eliminar la clave y"
print hash.delete(:y)

puts "\nSi el hash tiene una clave llamada z mostrar en pantalla yeeah"
hash.select{|k,v| puts "yeeah" if k=="z"}

puts "Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores"
print hash = hash.invert

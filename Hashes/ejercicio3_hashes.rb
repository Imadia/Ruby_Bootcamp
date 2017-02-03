inventario = {"Notebooks":4, "PC Escritorio":6, "Routers":10, "Impresoras":6}

op = 0

while op != 5
	puts "*** Menu ***"
	puts "1. Ingresar item"
	puts "2. Ver stock"
	puts "3. Ver item con mayor stock"
	puts "4. Revisar existencia"
	puts "5. Salir"	
	puts "\n\nIngrese opcion: "
	op = gets.chomp.to_i

	case op
	when 1
		puts "Ingrese el item y su stock separado por coma (ejemplo: pendrives, 100)"
		inv = gets.chomp.split(",")
		inventario[inv[0]] = inv[1].to_i
		puts = "Se agregaron: #{inv}"
	when 2
		print "#{inventario}\n"
	when 3
		m = inventario.values.max
		print "El item con mayor stock es: #{inventario.select{|k,v| v==m}.keys}\n"
	when 4
		puts "Ingrese item a revisar: "
		ans = gets.chomp
		respuesta = false
		inventario.each do |k, v|
			respuesta = true if k.to_s.downcase.include? ans.downcase
			break if respuesta 
		end
		if respuesta
			puts "Si hay existencias"
		else
			puts "No hay existencias"
		end
	when 5
		exit
	else
		puts "Ingrese una opcion valida"
	end
end
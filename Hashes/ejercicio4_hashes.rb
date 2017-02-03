personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

personas_hash = {}

personas.each_with_index do |e,i|
	personas_hash[personas[e]] = edad[i]
end

print personas_hash
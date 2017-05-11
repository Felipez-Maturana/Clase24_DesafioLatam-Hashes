def edades(hash)
	return hash.values
end

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]


hash1 = {}
i=0
while(i< [personas.length,edad.length].min)
	hash1[personas[i]] = edad[i]
	i+=1
end

puts edades(hash1)


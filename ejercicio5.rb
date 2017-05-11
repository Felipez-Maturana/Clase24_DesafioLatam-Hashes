def verificarExistencia(array, string)
	i=0
	while i<array.length
		if(array[i].upcase.eql?string.upcase)
			return 1
		end
		i+=1
	end
	#retorna 1 en caso de que el string no se encuentre en el arreglo
	return 0
end



personas = []

personas[0]={:Nombre => "Felipe",:Pais=>"Chile",:Continente=>"América",:Genero=>"Masculino"}
personas[1]={:Nombre => "Catalina",:Pais=>"Perú",:Continente=>"América",:Genero=>"Femenino"}
personas[2]={:Nombre => "Juan",:Pais=>"Egipto",:Continente=>"África",:Genero=>"Masculino"}
personas[3]={:Nombre => "Francisca",:Pais=>"Japón",:Continente=>"Asia",:Genero=>"Femenino"}
personas[4]={:Nombre => "Daniela",:Pais=>"Italia",:Continente=>"Europa",:Genero=>"Femenino"}
personas[5]={:Nombre => "Arturo",:Pais=>"Canadá",:Continente=>"aMérICA",:Genero=>"Masculino"}
personas[6]={:Nombre => "pedrO",:Pais=>"Chad",:Continente=>"África",:Genero=>"Masculino"}
personas[7]={:Nombre => "Pedro",:Pais=>"Nueva Zelanda",:Continente=>"Oceanía",:Genero=>"Masculino"}

puts "La cantidad de personas ingresadas es #{personas.length}"

continentes=[]
personas.each do |per|
	#puts x[:Continente]
	if verificarExistencia(continentes,per[:Continente]) == 0
		continentes.push(per[:Continente])
	end
end

puts "los continentes son:"
puts continentes


pedros=[]

personas.each do |per|
	if per[:Nombre].upcase.eql?"PEDRO"
		pedros.push(per)
	end
end

puts pedros

hombres = []
mujeres = []

personas.each do |per|
	if per[:Genero].upcase.eql?"MASCULINO"
		hombres.push(per)
	else
		mujeres.push(per)
	end
end

hash6={}

personas.each do |per|
	if(hash6[ per[:Continente].upcase ].nil?)
		hash6[ per[:Continente].upcase]=[].push(per[:Pais])
	else
		hash6[ per[:Continente].upcase].push(per[:Pais])
	end
end

puts hash6
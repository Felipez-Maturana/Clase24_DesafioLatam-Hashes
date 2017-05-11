inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}


opcion =0
while(opcion!=5)

	puts "ingrese una opcion"
	puts "1: Agregar item"
	puts "2: Inventario total"
	puts "3: Mayor stock"
	puts "4: Verificar existencia"
	puts "5: Salir"
	opcion = gets.chomp.to_i

	case opcion
	when 1
	  puts "ingrese nombre y stock separados por ','"
	  item = gets.chomp.split(',')
	  inventario[item[0]]=item[1]
	when 2
	  puts "La suma total del inventario es"
	  totalInventario=0
	  inventario.each do |x|
	  	totalInventario+=x[1]
	  end
	  puts totalInventario
	when 3
		print "el articulo con mayor stock es:"
		max=inventario.values.max
		inventario.each do |x|
			if(x[1]==max)
				puts "#{x[0]} el cual posee #{x[1]}"
			end
		end
	when 4
		puts "Ingrese nombre del articulo a verificar"
		articulo = gets.chomp
		inventario.each do |x|
			if articulo.upcase.eql? x[0].to_s.upcase
				puts "el articulo #{articulo} se encuentra y posee stock = #{x[1]}"
			end
		end
	when 5
		puts "Saliendo..."
	else
	  puts "Me diste la opción #{opcion} -- No tengo idea de qué hacer con ella. Verifica que estés ingresando una opción válida."
	end

	#puts inventario
end
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts "el plato mas caro es"

masCaro=restaurant_menu.values.max
restaurant_menu.each do |x|
	if x[1]==masCaro
		puts x[0]
	end
end


puts "el plato mas barato es"
masBarato = restaurant_menu.values.min
restaurant_menu.each do |x|
	if x[1]==masBarato
		puts x[0]
	end
end


puts "el promedio de los precios de los platos es"
totalValorPlatos=0
restaurant_menu.each do |x|
	totalValorPlatos+=x[1]
end

puts totalValorPlatos/restaurant_menu.length


puts "el nombre de los platos es"
nombres =restaurant_menu.keys 
print nombres
puts ""

puts "el nombre de los platos es"
valores =restaurant_menu.values 
print valores
puts ""



hashConIva={}

restaurant_menu.each do |x|
	hashConIva[x[0]]=x[1]*1.19
end

puts hashConIva


platosConDescuento={}
restaurant_menu.each do |x|
	if x[0].split.size>1
		platosConDescuento[x[0]]=x[1]*0.80
	else
		platosConDescuento[x[0]]=x[1]
	end
end
puts platosConDescuento


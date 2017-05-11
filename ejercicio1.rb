hash = {"x": 1, "y":2}

hash[:z]=3

hash[:x]=5

hash.delete(:x)

if hash.keys.include? :z
	puts "yeeeah"
end

hash2 ={}
i=0

llaves=hash.keys
valores=hash.values

while i<hash.length
	hash2[valores[i]] = llaves[i] 
	i+=1
end

puts hash2
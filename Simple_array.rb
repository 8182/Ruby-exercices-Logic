a = [1,2,3,4,5]
a.delete_if { |item| item == 1 }
a.each{|item| puts item}
print "el array tiene esta cantidad de elementos:#{a.count} \n"




#se transformara todas las letras a mayusculas del array
array = ["hola","saludos","adios"]
array.map { |string| print string.upcase}



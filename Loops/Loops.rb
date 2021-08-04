Bucles
*Contador: variable que va aumentando de uno en uno (o mas)
*Acumuladores: variable que guarda el valor de la iteracion anterior y la junta el nuevo valor tomado.
*condiciones de borde: bordes de inicio y fin de la iteracion, se deben revisar
*bloques: bloque de codigo que inica con do y termina con end o con las llaves {}
*variable local: variable que solo puede ser accedida dentro del bloque en la que fue declarada

sleep --> esperara la cantidad en segundos indicada antes de pasar a la siguiente iteracion    
while -> mientras que
until -> a menos que
for -> permite iterar en un rango
.times -> realiza cierta cantidad de veces una accion
break -> permite salir del bucle segun la condicion que se le de
next -> saltara el la iteracion segun una condicion logica entregada
-----------#ej de for-----------------
for i in 1..10
    puts "iteracion #{i}"
end
----------------#iteracion-------------------
i = 0
while i<10
    puts "esto se imprimira 10 veces"
    i += 1 #lo mismo que decir i + 1
end
--------------#iteracion guardando el valor--------------
i = 0
suma = 0 #importante declarar la variable antes para tener scope
while i < 100
    i+=1
    suma += i
end

puts i
puts suma
------------------#times----------
5.times do |i|
    puts "iteracion numero #{i}"
end
=begin
teniendo el siguiente array:
a = [1, 9 ,2, 10, 3, 7, 4, 6]

-Utilizando map sumar uno a cada uno de los valores del array.
-Utilizando map convertir todos los valores a float.
-Utilizando select descartar todos los elementos menores a 5 en el array.
-Utilizando inject sumar todos los valores del array.
-Utilizando .count contar todos los elementos menores que 5.

=end



a = [1,9,2,10,3,7,4,6]
#sumar todos los elemento del array
a.map{|int| int.to_i}
a.map{|suma| puts suma}
# print a.sum

#transoformacion a float
b = [1,9,2,10,3,7,4,6]
b.map {|float| puts float.to_f}

#eliminar numeros menos a 5
c = [1,9,2,10,3,7,4,6]
c.delete_if{|delete| delete <= 5}
c.map{|suma| puts suma}

#sumar todos los elementos del array con inject


#contar elementos menores que 5 con .count
e = [1,9,2,10,3,7,4,6]
e.count{|contar| puts contar < 5}
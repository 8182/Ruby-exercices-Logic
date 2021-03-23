Bucles
*Contador: variable que va aumentando de uno en uno (o mas)
*Acumuladores: variable que guarda el valor de la iteracion anterior y la junta el nuevo valor tomado.
*condiciones de borde: bordes de inicio y fin de la iteracion, se deben revisar
*bloques: bloque de codigo que inica con do y termina con end o con las llaves {}
    *variable local: variable que solo puede ser accedida dentro del bloque en la que fue declarada
    while -> mientras que
        until -> a menos que
            for -> 
                times -> realiza cierta cantidad de veces una accion
                
                a = [1,2,3,4,5,6]
                a[0] -> 1
                a[-1] -> 6
                
                
                
                10.times do |i|
                    puts i
                end
                
                # esto es lo mismo que arriba en 1 linea-->  10.times { |i| puts i }
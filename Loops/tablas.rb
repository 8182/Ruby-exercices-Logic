#este programa mostrara todas las tablas de multiplicar y el numero de multiplicacion ingresado por el usuario
tablas = ARGV[0].to_i
cantidad = ARGV[1].to_i

tablas.times do|i|
    cantidad.times do|z|
        puts"#{i} * #{z} =  #{z * i}"
    end
end
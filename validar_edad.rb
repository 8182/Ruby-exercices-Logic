#se tiene el siguiente codigo, se requiere que el ingreso de edad sea un parametro y que en caso de no recibir argumento que genere una edad al azar
def validar_edad
    puts "ingrese su edad"
    edad = gets.to_i
    if edad >= 18
        puts"es mayor de edad"
    else
        puts "es menor de edad"
    end
    
end

age = rand(50)
def val_edad(param1)
    if param1 >= 18
        puts"es mayor de 18"
    else
        puts"es menor de 18"
    end
end

print val_edad(age)
puts("ingre 1 para transformar de farenheit a celcius y en 2 en caso contrario")

opcion = gets.to_i

case opcion
when 1
    puts("ingrese grados en farenheit para transformar a celcius")
    faren = gets.to_i
    
    b = ((faren+40)/1.8) - 40
    
    puts(b)
when 2
    
    puts("ingrese grados en celcius, para transformar a farenheit")
    cels = gets.to_i
    
    b = (cels*1.8) + 32
    
    puts(b)

when 1 && 2 != 
    puts("has ingresado una opcion no valida")  
    
end

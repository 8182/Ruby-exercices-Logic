=begin
-Se muestra un texto con opciones.
-El usuario tiene que ingresar una opción válida -> validación de entrada.
-Si el usuario ingresa la opción 1 mostramos un texto.
-Si el usuario ingresa la opción 2 mostramos otro texto.
-Si el usuario ingresa la opción "salir" terminamos el programa.
-Desarrolla el diagrama de flujo de la solución y luego implementa el algoritmo. En el próximo
capítulo revisaremos la solución
=end

opciones = "inicializar variable"

while opciones !="salir" && opciones ="Salir" #al declarar una variable que incumple esto, se entrara si o si en el bucle
    puts "bienvenido, ingrese una de las siguientes opciones:"
    puts "1 suma de numeros \n2 divicion de numeros \nsalir"
    
    opciones = gets.chomp
    
    if opciones == "1"
        puts "sumaremos 2 numeros"
        a = gets.to_i
        puts "ingresa el segundo numero"
        b = gets.to_i
        puts "el resultado es #{a+b} \n\n"
        
    elsif opciones == "2"
        puts "ingresa los numeros a dividir"
        c = gets.to_i
        puts "ingresa el segundo numero"
        d = gets.to_i
        puts "el resultado es: #{c/d}\n\n"
        
    elsif opciones == "salir" || opciones == "Salir"
        puts "Adios"
    else
        puts "opcion no valida"
    end
end
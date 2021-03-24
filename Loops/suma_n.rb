i = 0 #inicializar iterador en 0
suma = 0  # variable que sumara todos los resultados
n_usuario = gets.to_i

while i < n_usuario #el valor ingresado por usuario solo sera el tope del bucle, el resultado final sera "suma"
    i+=1
    suma += i
end

puts suma
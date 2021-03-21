puts("tocar 1 para calcular hipotenusa entregando ambos catetos")
puts("tocar 2 para calcular cateto faltante, ingresando primero el cateto y despues la hipotenusa")

input = gets.to_i
case input
when 1

    cat1 = gets.to_i
    cat2 = gets.to_i
    hipotenusa = Math.sqrt(cat1*cat1 + cat2*cat2)
    puts(hipotenusa)

when 2

    cateto1 = gets.to_i
    hipo = gets.to_i
    resultado = Math.sqrt(cat1*cat1 + hipo*hipo)
    puts(resultado)

when 1 && 2 != 
    puts("has ingresado una opcion no valida")
    
end

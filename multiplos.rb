puts("este programa te dira si un numero es multiplo de otro \n
    primero ingresa el multiplo
    despues ingresa el numero")
    
multiplo = gets.to_i
num = gets.to_i

if num % multiplo == 0
        puts("#{num} si es multiplo de #{multiplo}")
    else
        puts("#{num } no es un multiplo de #{multiplo}")
end
    
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
    
    #se pide crear un programa que evalue si el numero ingresado es multiplo de otro numero.
    
    def multiplo(numero, multiplo)
        if numero % multiplo == 0
            puts "#{numero} si es multiplo de #{multiplo}"
        else
            puts "#{numero} no es multiplo de #{multiplo}"
        end
    end
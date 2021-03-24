#necesitamos validar que el usuario ingrese un numero entre 1 y 10

puts "ingrese un numero entre 0 y 10"
numero = gets.to_i

while numero < 1 || numero > 10
    puts "ingresaste un numero fuera del rango"
    puts "ingresa nuevamente un valor entre 0 y 10"
    numero = gets.to_i
end

puts "el numero ingresado fue #{numero}"


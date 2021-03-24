#se le pide al usuario crear la contraseña, despues ingresarla, se podria crear un bucle en donde no se deje avanzar hasta ingresar la contraseña correcta, transformando la contraseña en un objeto y e instanciando este
puts "cree su nueva contraseña"
password = gets.chomp
puts "ingrese su contraseña"

if password = gets.chomp != password
    puts "contraseña incorrecta"
else
    puts "contraseña correcta, bienvenido"

end


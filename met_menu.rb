def imprimir_menu
    puts"menu"
    puts"1)opcion 1"
    puts"2)opcion 2"
    puts"3)opcion 3"
    puts"4)opcion 4"
    puts"salir"
end

opcion_menu = 'cualquier valor'
while opcion_menu != 'salir' || opcion_menu != 'Salir'
    imprimir_menu # Aquí leemos imprimir_menu
    opcion_menu = gets.chomp
    if opcion_menu == '1'
        puts 'Realizando acción 1'
    elsif opcion_menu == '2'
        puts 'Realizando acción 2'
    elsif opcion_menu == '3'
        puts 'Realizando acción 3'
    elsif opcion_menu == '4'
        puts 'Realizando acción 4'
    elsif opcion_menu = 'salir' || opcion_menu = 'Salir'
        puts 'Saliendo'
    else
        puts 'Opción inválida'
    end
end

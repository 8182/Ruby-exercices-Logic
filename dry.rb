#se necesita volver DRY este codigo
puts 'Menú: '
puts '1) Opción 1'
puts '2) Opción 2'
puts '3) Opción 3'
puts '4) Salir'
puts 'Ingrese una opción: '
opcion_menu = gets.chomp.to_i
while opcion_menu != 4
    if opcion_menu < 1 || opcion_menu > 4
        puts 'Opción no es válida'
    else
        puts 'Submenú: '
        puts "#{opcion_menu}.1) Opción 1"
        puts "#{opcion_menu}.2) Opción 2"
        puts "#{opcion_menu}.3) Opción 3"
        puts "#{opcion_menu}.4) Volver al menú principal"
        puts 'Ingrese una opción: '
        opcion_submenu = gets.chomp.to_i
        while opcion_submenu != 4
            if opcion_submenu < 1 || opcion_submenu > 4
                puts 'Opción no es válida'
            else
                puts "La opción ingresada fue #{opcion_menu}.#{opcion_submenu}"
                puts 'Submenú: '
                puts "#{opcion_menu}.1) Opción 1"
                puts "#{opcion_menu}.2) Opción 2"
                puts "#{opcion_menu}.3) Opción 3"
                puts "#{opcion_menu}.4) Volver al menú principal"
            end
            puts 'Ingrese una opción: '
            opcion_submenu = gets.chomp.to_i
        end
    end
    puts 'Menú: '
    puts '1) Opción 1'
    puts '2) Opción 2'
    puts '3) Opción 3'
    puts '4) Salir'
    puts 'Ingrese una opción: '
    opcion_menu = gets.chomp.to_i
end

--------------------------
def menu(opcion_menu = 0) #el gets estara dentro de la validacion, para que este sea validado, menu tendra el texto y el metodo validacion
    puts "#{opcion_menu}.1) Opción 1"
    puts "#{opcion_menu}.2) Opción 2"
    puts "#{opcion_menu}.3) Opción 3"
    puts "#{opcion_menu}.4) Salir"
    puts "Ingrese una opción: "
    def validacion
        opcion_menu = gets.chomp.to_i
        while opcion_menu != 4
            if opcion_menu < 1 || opcion_menu > 4
                puts "ingresa una opcion valida"
            else
                puts"sub-menu"
                menu
            end
            break
        end
    end
    validacion
end

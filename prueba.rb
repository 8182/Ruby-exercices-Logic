def menu(opcion_menu = 0)
    #def menu_main
    puts "#{opcion_menu}.1) Opción 1"
    puts "#{opcion_menu}.2) Opción 2"
    puts "#{opcion_menu}.3) Opción 3"
    puts "#{opcion_menu}.4) Salir"
    puts "Ingrese una opción: "
    #end
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
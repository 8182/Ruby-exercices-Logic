=begin
-Un emprendedor quiere crear una aplicación y necesita saber si es rentable, para eso tiene que:
-El producto planea venderse en 50 dólares
-Se espera tener 1000 usuarios en el año
-Los gastos del año son 20000 dólares
-Las utilidades se calculan como (precio_venta * usuarios) - gastos
-Los impuestos aplicados a las utilidades son el 35% y solo aplican si es positivo.

--- Crear el progama emprendedor.rb donde el usuario ingrese el precio, el número de
usuarios, los gastos y el programa calcula las utilidades.

=end
puts "este programa calculara las utilidades dadas por el valor del producto, por la cantidad de usuarios, menos los gastos y el iva en caso de haber utilidades."
print "ingrese el valor del producto:"
p_producto = gets.to_f
print "ingrese el numero de clientes:"
n_usuarios = gets.to_f
print "ingrese el valor de los gastos:"
gastos = gets.to_f

utilidades = (p_producto*n_usuarios) - gastos

if utilidades > 0
    puts "hubo ganacias brutas de : $#{utilidades}"
    puts "utilidades netas: $#{utilidades*0.65}"
    else
        puts "no hubo utilidades"
end



# con ARGV

# p_producto = ARGV[0].to_f
# n_usuarios = ARGV[1].to_f
# gastos = ARGV[2].to_f

# utilidades = (p_producto*n_usuarios) - gastos

# if utilidades > 1
#     puts "hubo ganacias brutas de : $#{utilidades}"
#     g_neta = utilidades*0.65
#     puts "utilidades netas: $#{g_neta}"
# else
#     puts "no hubo utilidades"
# end

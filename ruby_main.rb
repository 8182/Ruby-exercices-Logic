=begin

comentario de una linea #
puts "hola" --> imprime en terminal(tambien existe print, pero este no agrega salto de linea)
al declarar una variable se debe usar "" si no va a ser interpretado como una funcion el string
\ (alt GR+ ?) \n salto de linea
'' --> doble permite interpolacion
\t --> tabular texto
interpolacion --> texto = "tienes #{edad} años" 
para declara una CONSTANTE basta con dar empezar el nombre en mayuscula
gets --> toma valor del usuario, con chomp se quita el salto de linea
primero = ARGV[0].to_i --> para recibir un dato(que transformara a Integer) al ejecutar el codgio desde cmd
generar numero al azar --> rand(rango_min...rango_max)
.count(parametro)
to_s --> transformacion a string
to_f --> transformacion a float
orden de prioridad en operaciones --> **(expo) --> * & % & / --> + & -
!= --> diferente de 
&& --> y (1° condicion y 2°)
|| --> o

****** import*****(switch)
case varible (compara la variable entregada en los when, funciona ejecutando un comparador === con cada parametro entregado)
when 2
    (ejecutar codigo)
end



=end

nombre = gets.chomp
puts nombre

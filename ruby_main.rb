
#comentario de una linea 
*puts "hola" --> imprime en terminal(tambien existe print, pero este no agrega salto de linea)
#*al declarar una variable se debe usar "" si no va a ser interpretado como una funcion el string
#*para declara una CONSTANTE basta con dar empezar el nombre en mayuscula
#*orden de prioridad en operaciones --> **(exponenciación) --> * & % & / --> + & -
#*interpolacion --> texto = "tienes #{edad} años" 

comandos:
    \n --> salto de linea (tiene que ser dentro de un array "")
    '' --> array que no permite interpolacion
    "" --> array que permite interpolacion
    \t --> tabular texto
    =begin =end --> comentarios multi linea
    sleep --> permite darle una pausa al programa (sleep 1 -> esperar 1 seg)

ARGV[0] --> para recibir un dato ingresado en la ejecucion del programa(este sera un array) (ej: a = ARGV[0])(se puede transformar.to_i .to_f .to_s etc)
Metodos:
    .rand(rango_min...rango_max) --> genera numero al aza (rand 100 --> genera un numer al azar del 0 al 100)
    .count(parametro)
    .gets --> toma valor del usuario, con .chomp se quita el salto de linea(ej: a.gets.chomp ---or--- a = gets.chomp)
    .size -->
    .length --> cuenta el largo de una cadena tomando los espacios y otros
    .to_s -- .to_i -- .to_f --> transformacion a string,interger,float respectivamente
    .reverse --> da vuelta un string
    .upcase --> transforma todo un string a mayusculas
    .downcase --> lo contrario a upcase (pasa todo a minusculas)


operadores logicos
    != --> diferente de
    == --> igual
    === --> extrictamente igual
    && --> y (1° condicion y 2°)
    || --> o
    % --> modulo -> retorno del resto de la division
    += --> a+=1 -> a suma 1 y guarda el valor en a
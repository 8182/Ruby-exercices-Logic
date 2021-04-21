
    #comentario de una linea 
    *puts "hola" --> imprime en terminal(tambien existe print, pero este no agrega salto de linea)
    #*al declarar una variable se debe usar "" si no va a ser interpretado como una funcion el string
    #*para declara una CONSTANTE basta con dar empezar el nombre en mayuscula
    #*orden de prioridad en operaciones --> **(exponenciación) --> * & % & / --> + & -
    #*interpolacion --> texto = "tienes #{edad} años"
    #tipos de alcanze: local, global,de instancia, de clase
    #para declarar una varible global se usa $varible
    #no es recomendable usar muchas variables globales ya que pueden romper el codigo al nombrar una con un nombre ya usado
    # parar cargar un archivo en irb: irb -r ./foo.rb


comandos:
    -e --> se puede crear directamente un programa de ruby junto al comando -e ej: ruby -e "print 'hola mundo'"
    \n --> salto de linea (tiene que ser dentro de un array "")
    '' --> string que no permite interpolacion
    "" --> string que permite interpolacion
    \t --> tabular texto
    =begin =end --> comentarios multi linea
    sleep --> permite darle una pausa al programa (sleep 1 -> esperar 1 seg)
    break --> compre un ciclo, alcanzando a ejecutar el codigo hasta donde se de el break
    ARGV[0] --> para recibir un dato ingresado en la ejecucion del programa(este sera un array) (ej: a = ARGV[0])(se puede transformar.to_i .to_f .to_s etc)
    Class --> creacion de una clase, suelen contener metodos para ser usados en las instancias.
    @estado --> valores guardados en variables (un array por ej), pero su nombre real es variable de instancia
    attr_accessor :metodo --> mejor creacion de getter y setter para una variable global
    attr_reader :met --> getter
    attr_writer :met --> setter
    initialize --> meotodo constructor,a este se le dan las variables a inicializar.
    require realative

Metodos:
    .each --> recorre cada elemento del array
    .rand(rango_min...rango_max) --> genera numero al aza (rand 100 --> genera un numer al azar del 0 al 100)
    .count(parametro)
    .gets --> toma valor del usuario, con .chomp se quita el salto de linea(ej: a.gets.chomp ---or--- a = gets.chomp)
    .size -->
    .length --> cuenta el largo de una cadena tomando los espacios y otros
    .to_s -- .to_i -- .to_f --> transformacion a string,interger,float respectivamente
    .reverse --> da vuelta un string
    .upcase --> transforma todo un string a mayusculas
    .downcase --> lo contrario a upcase (transforma todo a minusculas)
    .sample --> toma una muestra de un array (se le puede dar la cantidad de elementos a tomar, contando desde el 1 ej: a=[1,2,3,4,5].sample(2)#=> [5,4])
    .include?(x) --> evaluacion booleana de si incluye este elemento
    .method --> muestra los metodos disponible de la clase
    while --> ejecuta un bloque hasta que la condicion sea evaluada como false
    until --> contrario a while, ejecuta el bloque hasta que la condicion sea tr
    next --> se suele usar para saltar una iteracion, bajo alguna instruccion dada
    return -->  return le entrega al valor a la variable ,el resto del codigo sera no se ejecutara despues del return)

Creando un metodo propio:
    -al metodo se le dan parametros, y estos al ser llamados se le entregan argumentos a los parametros

    def suma(numero) --> variable que en este caso toma el nombre de parametro
        total = numero + 1
        print"el resultado es #{total}"
    end
    suma 5--> argumento
    #para llamar este metodo y darle un parametro basta con suma(5) o suma 5 (los () son optativos)
    a = 2
    suma(a)
------------------
def suma(num1,num2) #siempre se le deben entregar los argumentos segun la cantidad de parametros, a menos que tengan un valor opcional
    total = num1+num2
    puts"el resultado total es #{total}"
end
-----------------
def incrementar(numero, cantidad = 1)
    total= numero + cantidad
    puts"el resultado es #{total}"
end
incrementar(2) # o podria ser incrementar(2,3)
---------ejemplo de next---------
20.times do |i|
    next if i.even?
    puts i
end
#=> 1,3,5,7,9,11...
-------------Objetos----------
class Persona --> creacion de la clase
    attr_accessor :nombre, :edad #--> entrega de permiso de lectura/escritura
    def initialize(nombre,edad) #--> se crean los metodos, y se inicializan para darles un valor al crear el objeto 
        @nombre  = nombre #-->la variable local nombre es asignada a la var. de instancia @nombre, al realizar esto cada instancia tendra un valor propio.
        @edad = edad #--> lo mismo para edad

end

operadores logicos
    != --> diferente de
    == --> igual
    === --> extrictamente igual
    && --> y (1° condicion y 2°)
    || --> o
    % --> modulo -> retorno del resto de la division
    += --> a+=1 -> a suma 1 y guarda el valor en a


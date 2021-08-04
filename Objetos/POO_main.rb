    Objetos (instancias, constructores, clases...)
    Conceptos:
        Objeto: un objeto es cualquier elemento en ruby, un objeto pertenece a una clase o mas, por ej: 5.class --> integer.

        instancia: objeto de un clase, este es una instancia de esta clase y podra usar los metodos que contenga esta clase.

        metodo_de_instancia: metodos creados en la clase, solo pueden ser usados por una instancia de la clase (un objeto), los metodos de instancia definen los posibles comportamientos de un objeto

        Poliformismo: sucede cuando un objeto de diferentes clases tienen acceso a los mismos metodos,principalmente se da por las herencias de clase

        Abstraccion: la abstraccion apunta a una capacidad de alejarse del problema y verlo de manera aislada, en el caso de la POO se refiere a usar los objetos pensando en que hacen, y no en como lo hacen (manera mas simple de ver los objetos = abstraccion)
        
        Varibale_de_instancia: una variable de instancia es una variable donde perdura el valor en la instancia, su tipado se diferencia de las otras por un @, en los metodos de instancia se deben usar variables , pero este valor no perdurara en la instancia, por lo que se debe guardar en una variable de instancia --> @valor1 = valor1

        Principio_encapsulacion: concepto que define que los valores y el trabajo interno de un metodo creado debe ser "privado", si los atributos fueran publicos estarian expuestos a clases predeterminadas del lenguaje de programacion, pudiendo provocar conflictos en su funcionamiento

        Getter_Setter: concepto de los lenguajes de programacion, metodos que obedecen al principio de "encapsulacion" , su principal funcion es establecer el valor de un parametro o la lectura de este, a travez de un metodo,no consultando el valor propiamente.(tambien se pueden usar en metodos de clase)

        Accesos: existen metodos abreviados en ruby para crear un setter y un getter, estos son attr_reader(getter), attr_writer(setter), y attr_accessor que permite ambas

        Constructor: un constructor obliga a que cuando se cree una instancia, se ingresen cierta cantidad de parametros definidos si no, no se podra crear la instancia, a menos que se le den valores predefinidos al constructor, en caso de no ser llenado los parametros, se crea con initialize param1, param2
        
        Mutabilidad: los objetos en ruby son mutables,esto quiere decir que se puede cambiar sus parametros a travez de metodos, tambien se pueden crear objetos inmutables al quitarle el setter, y dandole los parametros con el constructor, ademas se debe crear una copia del objeto en caso de ser operado a otro objeto, mantiendo el objeto original

        Herencia: class hija < padre --> la herencia transmite todos los metodos y las variables de instancia de la clase padre a la hija, esta ultima puede usar todos los metodos de su padre, ademas puede tener sus propios metodos, y sobreescribir los metodos de las clase padre

        *un objeto de un clase puede tomar objetos de otra clase

        Super: instrucion que usa un metodo heredado, devuelve el mismo bloque de codigo que el padre, en el lugar que se requiera y con alguna modificacion si asi se requiere
        
        Variable_de_clase: @@ las variables de clase son definidas en el main de la clase, se pueden usar para contar la creacion de instancias por ej.
        
        Metodo_clase: declarado con self.nombre_metodo (tambien se puede declarar al reves, pero asi es mas usado), es un metodo que apunta a la clase en si
        
        Self:hace referencia a un elemento dentro de la misma clase (puede ser una instancia o la clase) si se usa en un metodo, self.atributo retornara como valor el valor del atributo que tiene la instancia
        
        Poliformismo: concepto que indica las multiples forma a la que pueden responder distintos objetos a algun metodo, esto pasa cuando varias clases tienen una clase padre
         
        extension_clases: se pueden definir las clases mas de una vez, donde las siguientes declaraciones añadiran los metodos a la primera (se pueden extender metodos que ya existen en ruby, como string)

        
        Modulos: 
        *se declara con; module NombreModulo
        *se pueden crear clases y metodos de modulo dentro del modulo.
        *los metodos de un modulo son usados con Modulo.metodo(argumento1,argumento2)ej 5.Modulo.metodo
        *son usados en clases con NombreModulo::clase
        *se le declaran metodos con self.nombre_metodo
        *es bastante similar a una clase, pero esta no puede crear instancias, ni heredar 
        *son usados para agrupar constantes, agrupar metodos, agrupar clases, evitar colisiones
        *pueden ser anidados

        Mixins: se permiten incorporar metodos definidos de un modulo como metodos de instancia o de clase de un objeto;
        
        include & extend; para incluir los metodos de un modulo como metodos de instancia de usa el comando include y para agregarlos como metodos de clase el comando extend

        -Multiple herencia: en ruby no existe la multiple herencia, osea que una clase puede heredar de 2 clases padres, en solucion a esto se usan los mixins, agregando modulos a las clases que ya tienen una clase padre

        
        ejemplos:
        -----------------------------------------setters y getters--------------------------
        class Persona
            def set_nombre(nombre)
                nombre 
            end
        end
        #en este caso se crea un metodo, el cual recibe un parametro que se llamara "nombre", este tendra el valor "nombre" (osea el argumento dado), si no se llama el parametro dentro del metodo, su valor sera nil.
        #Este parametro(variable) sera local, por lo que no puede ser utilizado por otro metodo, solo existe en el metodo set_nombre, aunque se cree otro metodo que use "nombre", esta correspondera a otra variable local
*******************
    def set_nombre(nombre)
        @nombre = nombre
    end
    #aqui el valor del parametro sera entregado a una variable de instancia,con esto se permite mutar el valor del parametro dado inicialmente al objeto, o permitir la lectura del valor del parametro con otro metodo, entre otros
    #este es un setter creado manualmente, un setter consiste en guardar el valor del parametro en una variable de instancia.
    def get_nombre
        @nombre
    end
    #este es un getter manual, al llamar el metodo get_nombre, el valor de este sera una variable de instancia, que contiene el valor dado anteriormente por el setter(debe habersele dado un valor antes)
**********************
    class Persona
        attr_reader :name
        attr_writer :name
      end
      #getter y setter automaticos de ruby, tienen la misma funcionalidad del codigo expuesto anteriormente donde el nombre dado sera el metodo, y la variable de instancia (@name)
      #para setter(writer) el dato se debera crear la instancia primero, luego:
      # p1.name = "juan"
      #y para el getter(reader) --> p1.name #=> "juan"



-------------------------------------------constructor-----------------------------------------------

class Persona
    def initialize 
        puts "creando nueva instancia de Persona..."
    end
    #uso mas simple de un constructor, esto provocara que al crearse una nueva instancia, se imprima el mensaje (o que se ejecute un bloque de codigo)
    a = 
    def initialize(name) #inicializacion del argumento persona
        puts "creando nueva persona llamada #{name}" #interpolacion del argumento
    end
*********************
    def initialize(num1, num2)#se inicializaran estos parametros
    end
        a = Numeros.new(5,10) --> asi se le entregarian los valores a este constructor
        #se le deberan dar los parametros al crear la instancia(), si no se le entregan generara un error y no se creara el objeto

**********************

    def initialize(var1 = 20)#se le da un valor predefinido en caso de que no se le entregue un valor 

-----------------------mutabilidad------------------

    def metodo (sumar = 1)
        clase.new(@var1, @var2 + sumar) #--> con esto crearemos una nueva instancia, se le deben entregar las mismas variables de instancia que tienen el objeto al cual se le aplica, para que este mantenga esos valores y se le agregue uno nuevo.


----------------------Herencia------------------------

class Padre
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
    def saludar
        "hola!"
    end
end

class Hija < Padre
    def initialize(nombre)
        @nombre = nombre + "jr" #aqui se crea una copia y se modifica el metodo de la clase heredada
    end
end

padre = Padre.new("juan")#la instancia del padre seguira existiendo
hija = Hija.new(padre.nombre)

puts padre.nombre
puts hija.nombre #aqui llamara a la instancia padre, de la clase Padre, y le agregara el "jr"

***********Super***************

class Hija < Padre
    def saludar
        super + ' a todos'
    end

************Variable_de_clase & metodo_clase***********
class Maquina
    @@count = 0
    def initialize(size)
        @size = 1
        @@count +=1
    end
    #def total_peieces --> el problema de esto es que debe usarse en una instancia y contaria el n° de cuando se creo esa instancia
    #    @@count 
    #end
    def self.count_piezas #metodo de clase
        @@count
    end
end

pieza1 = Maquina.new 
Maquina.count_piezas #consulta a la clase

----------setter y getter de metodo de clase-------

@@piezas = 0
def self.piezas # getter
    @@piezas
end
def self.piezas =(valor) #al usarlo Maquina.piezas(5)
    @@piezas = valor
end


****************self***********
class Karaoke
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
    def cantar
        "soy #{self.nombre} y estoy cantando" #self proporciona el acceso al atributo nombre de la instancia
    end
    def ir_a_karaoke
        self.cantar #en este caso self apunta a un metodo de instancia
    end
end

************************Modulos ********************
Modulos: principalmente usados para agrupar constantes, agrupar metodos, agrupar clases, evitar colisiones, 

agrupar constantes : 
module MyMath(ruby ya tiene el modulo Math por defecto)
    PI = 3.14
    E = 2.718
end
   
------------------ evitar colisiones de nombre---------------
module ActiveRecord
    class Base
    end
end
module ActionView
    class Base
    end
end

para usarlos=
ActiveRecord::Base

-------------- mixins-----------------------------
module Nadador
    def nadar
        puts "puedo nadar!"
    end
end

class Gato 
end
class Perro
    include Nadador # aqui se incluye el modulo Nadador y sus metodos
end

bobby = Perro.new
puts bobby.nadar #=> "puedo nadar!"

Perro.nadar #=> invalid
--------------------------
class Perro
    extend Nadador #inclusion del modulo y sus metodos para toda la clase(solo para la clase, no para las instancias)
end

Perro.nadar #=> puedo nadar!


****************************ejemplo del uso de Mixins********************

module Nadador
    def nadar
        puts "puedo nadar!"
    end
end
module Carnivoro
    def comer
        puts "puedo comer carne!"
    end
end

class Mamifero
end

class Gato < Mamifero
    include Carnivoro
end
class Perro < Mamifero
    include Carnivoro
    include Nadador
end

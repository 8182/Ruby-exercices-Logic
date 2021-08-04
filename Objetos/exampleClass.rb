class Padre
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Hija < Padre
    def initialize(nombre)
        @nombre = nombre + " jr" #aqui se crea una copia y se modifica el metodo de la clase heredada
    end
end

padre = Padre.new("juan")#la instancia del padre seguira existiendo
hija = Hija.new(padre.nombre)

puts padre.nombre
puts hija.nombre #aqui llamara a la instancia padre, de la clase Padre, y le agregara el "jr"



class Persona
    attr_accessor :nombre, :mascotas

    def initialize(nombre, mascota= nil)
        @nombre = nombre
        @mascotas = []
        @mascotas.push mascota
    end
end

class Mascota
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

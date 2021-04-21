class Persona
    attr_accessor :nombre, :mascota

    def initialize(nombre, mascota = nil)
        @nombre = nombre
        @mascota = [] # se crea un array de mascotas ya que puede tener mas de 1
        @mascotas.push mascota
    end
end
class Mascota
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end
mascota1 = Mascota.new("fito")
persona1 = Persona.new("alejandro", mascota1)

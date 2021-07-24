#creacion de setter y geter logicos
class Mascota

    def get_nombre 
        @nombre
    end
    def set_nombre(nombre)
        @nombre = nombre 
    end

end
m1 = Mascota.new

m1.set_nombre = "minino"
m1.get_nombre #=> minino

=begin
# otra forma de crear un setter y getter manualme es:
 

def nombre
    @nombre
end
def nombre=(nombre)
    @nombre
end

al hacer esto, el nombre podra escribir y entregar su valor al mismo tiempo:
m1.nombre = "spike" --> se setea el nombre
m1.nombre #=> spike --> se hace un get del nombre
=end

class Vehiculo #clase creada    
    def encender() #metodo de la calse
        @encendido = 'on'#variable de instancia a la cual se es accedido a travez del medodo encender, esto es el principio de encapsulacion
    end
    def apagar()
        @encendido = 'off'
    end
    def estado()
        @encendido #si se consulta el estado sin antes darle un valor generara un error(se soluciona dandole un valor predefinido, con uns constructor)
    end
end

auto1 = Vehiculo.new
auto2 = Vehiculo.new



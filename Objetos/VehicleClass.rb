class Coche
    attr_accessor :color, :velocidad, :carburante,

    @@kms = Set.new
    def initialize
        @encendido = false
        @avanzando = false
        @@kms << self
    end
    def arrancar
        @encendido = true
        puts "El motor ha sido encendido"
    end
    def ir
        if @encendido
            @avanzando = true
            puts "El coche esta avanzando"
            
        else
            puts "El coche no puede avanzar porque no esta encendido"
        end
    end
    def parar
        @encendido = false
        if @avanzar = true
            puts "frenas"
        else
            puts"no estas avanzando"
        end
    end
    def girarIzq
        if @avanzando === false
            puts"no puedes girar por que no estas avanzando"
        else 
            puts "giras a la izquierda "
        end
    end
    def girarDer
        if @avanzando === false
            puts"no puedes girar por que no estas avanzando"
        else 
            puts "giras a la derecha"
        end
    end
    def showKms
        @kms
    end
    
end
tesla = Coche.new
tesla.color = "Negro"
tesla.velocidad = "300 km/h"
tesla.carburante = ""
tesla.arrancar
tesla.ir
tesla.girarIzq
tesla.showKms

# ferrari = Coche.new
# ferrari.color = "Rojo"
# ferrari.velocidad = "280 km/h"
# ferrari.carburante = "lleno"
# ferrari.arrancar
# ferrari.ir




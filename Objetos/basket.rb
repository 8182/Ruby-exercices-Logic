#se creara una clase canasta, con los atributos fruta,velas y tarjetas.
#se creara un metodo que permita la suma de todos los elementos que contiene una instancia de Canasta
#se creara un metodo que sumara una canasta con otra, conservando ambas canastas (inmutables) y creando una nueva que contenga la cantidad de elementos de ambas canastas
class Canasta
    attr_accessor :frutas, :velas, :tarjetas
    def initialize(frutas = 0, velas = 0, tarjetas = 0)
        @frutas = frutas
        @velas = velas
        @tarjetas = tarjetas
    end
    def cantidad_elementos
        @frutas + @velas +@tarjetas
    end

    def +(otra_canasta) # con este metodo se creara una nueva instancia,el metodo "+"" global no sera modificado, lo que se indica es que este meotodo sumara un valor
        Canasta.new(@frutas + otra_canasta.frutas, 
                    @velas + otra_canasta.velas,
                    @tarjetas + otra_canasta.tarjetas)
    #al darle c2, este contiene estas variables de instancia, estas seran sumadas a otra_canasta(la cual tiene un valor 0), por lo que guardara el valor original de c2, y la nueva instancia sera sumada al objeto(c1) que ejecuta el metodo(+)
    end
end  

puts c1 = Canasta.new(3,2,1)
puts c2 = Canasta.new(4,3,2)
suma_canastas = c1+c2 #ejecucion del metodo +(otra_canasta)
puts suma_canastas.cantidad_elementos
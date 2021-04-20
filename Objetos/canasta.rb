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

c1 = Canasta.new(3,2,1)
c2 = Canasta.new(4,3,2)

puts suma_canastas = c1+c2
puts suma_canastas.cantidad_elementos
#como hacer un metodo que sume los elementos de una instancia?
#
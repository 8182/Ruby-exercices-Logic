class Semaforo
    attr_accessor :estado
    def initialize(estado = "rojo")
        #asi le damos un valor de fabrica en caso de no recibir argumento
        @estado = estado # de todas maneras se podra cambiar el valor del estado
    end
end
s1 = Semaforo.new(:rojo)
s2 = Semaforo.new(:verde)
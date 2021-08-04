class Carta
    attr_reader :numero , :pinta #se le pone reader debido a que los metodos son aleatorios y no determinados por el usuario

    def initialize # se inciializa la variable para que al crease ejecute su codigo interno 
        @pinta = ['C','D','E','T'].sample
        @numero  = rand(1..13)
    end
    def reveal #se le agrega un revelador ya que no se puede acceder a las variables que fueron inicializadas
        "#{@numero}--#{@pinta}"
    end
end


class Play #creacion de una repeticion en la cual se puede definir el nombre de la mano
    attr_accessor :play ,:name 
    def initialize(name)
        @name = name
        @play =[]
        5.times do
            @play <<Carta.new.reveal
        end
    end
end
    
hand = Play.new('hand_1')

puts hand.play
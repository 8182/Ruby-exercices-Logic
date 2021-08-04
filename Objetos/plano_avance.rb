class Mapa 
    attr_reader :x, :y
    def initialize(x,y)
        @x = x 
        @y = y
    end
    def avanzar_x
        @x +=1
    end
    def avanzar_y
        @y+= 1
    end
end


class empresa
    def nombre
        @nombre
    end
    def direccion
        @direccion
    end
    
    def direccion=(direccion)
        @direccion = direccion
    end
end


=begin
    refactorizar el codigo 
    
attr_reader :nombre
attr_accesor :direccion
    
=end
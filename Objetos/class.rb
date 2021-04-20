class Mascota
    attr_accesor :nombre
    def saludar
        puts "guau!"
    end

end

persona1 = Persona.new

persona1.saludar

#estos metodos de instancia solo pueden ser usados al instanciar
#si ingresamos Persona.saludar --> generara un error, ya que solo se pueden instanciar estos metodos en una instancia
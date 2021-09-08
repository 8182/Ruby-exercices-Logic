#cargamos la herramienta minitest que viene con ruby
#cargamos el directorio que tenga nuestra clase con sus metodos, si bien declaramos una nueva clase (que por convencion se le pone el mismo nombre de la clase antecedido por Test) usaremos la clase para crear nuevas instancias y validarlas
require 'minitest/autorun'
require_relative 'ops.rb'

class TestOperaciones < Minitest::Test
    
    numero = Operaciones.new
    def test_calcula_impuestos
        assert_equal 11.9, numero.calcula_impuestos(10)
    end
end
#cargamos la herramienta minitest que viene con ruby
require 'minitest/autorun'

def nombre
    brayan
end

class TestNombre < Minitest::Test #siempre es necesario heredar a la clase a que vamos a probar
    
    def test_nombre
        assert_equal "brayan", nombre
    end
end
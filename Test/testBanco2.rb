require 'minitest/autorun'
require_relative "cuentaBancaria"
#require_relative es mas competo que require,buscara el root dado primero con extension .rb y luego otras extensiones
class TestCuentaBancaria < Minitest::Test
    attr_accessor :saldoPrueba
    @saldoPrueba = 200
    def setup
        @cuentaTest = CuentaBancaria.new(saldoPrueba)
    end

    def test_objeto_no_esta_vacio
        refute_nil @cuentaTest
    end
    #poder probar que se pueda asignar un valor al objeto
    def test_poder_asignar_monto_inicial
        assert_equal 200, @cuentaTest.monto
    end

    def test_existe_metodo_retiro
        assert_respond_to @cuentaTest, "retiro" #aqui hacemos el vallado al atributo o valor que queremos obtener, y el output esperado
    end

    def test_retiro_disminuye_monto
        assert_equal (@saldoPrueba + 100), @cuentaTest.retiro(100)
    end

    def test_enviar_error_fondos_insuficientes
        assert_raises ArgumentError do
            @cuentaTest.retiro(300)
        end
    end

    def test_existe_depositar_cuenta
        assert_respond_to @cuentaTest, "depositar"
    end

    def test_suma_deposito
        assert_equal 300,@cuentaTest.depositar(100)
    end

    def test_nombre_cuenta
        
    end
    def test_2_palabras_cuenta
        
    end
end
cuenta1 = CuentaBancaria.new(100)

#assert_equal = se le da el valor esperado, seguido de cuando deberia obtener ese valor
#assert_respond_to = pregunta si responde el metodo preguntado 
#

puts TestCuentaBancaria.methods
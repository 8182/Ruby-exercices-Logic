=begin
vamos a crear una clase cuenta bancaria que permita:
1-asignarle un monto inicial cuando se cree la cuenta bancaria
2-poder retirar fondos
3-exista un mensaje de error en caso de que el usuario intente retirar mas fondos de los que tiene disponible
4-poder depositar mas dinero en la cuenta
5-la cuenta debe tener un nombre de 2 palabras

=end
class CuentaBancaria
    #el saldo de la cuenta sera definido como monto
    attr_accessor :monto, :abono
    attr_reader :nombre_cuenta
    def initialize (importe)
        @monto = importe
        # nombre_cuenta = ""

    end
    def retiro(importe)
        raise ArgumentError.new ("fondos insuficientes")if importe > @monto
        @monto -= importe
    end
    def depositar(abono)
        @monto += abono
    end
    def nombre_cuenta=(nombre)
        arr = nombre.split("")
        num_palabras = arr.count
        raise ArgumentError.new("el nombre de la cuenta debe ser de almenos dos palabras")
        
    end
end

# puts cuenta1 = CuentaBancaria.new(100,"jose castillo")
# puts cuenta1.retiro(40)
#  puts cuenta1.nombre_cuenta


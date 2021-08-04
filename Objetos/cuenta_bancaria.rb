#se pide crear una clase CuentaBancaria, con el atributo n_usuario (numero de usuario), cuando este sea creado se le debera crear un nombre, numero de cuenta y si es un usuario vip o no.
#el estado vip podra ser desactivado y activado.
#el numero de cuenta no puede ser menos a 8 digitos
#se debe poder conocer el numero de cuenta y el estado VIP con una consulta (1 metodo)
class CuentaBancaria
    attr_accessor :n_usuario 
    def initialize()#iniciarlizar los atributos del usuario
        if  #validacion de cuando se cree el numero de cuenta tenga mas de 8 digitos
            
        end 
    end
    def account_number # metodo para consultar 

    end
    def Desactivar_vip

    end
end



class CuentaBancaria
    attr_accessor :n_usuario 
    def initialize(user_name, account_number, vip = 0 )
        if account_number.digits.count != 8
            raise RangeError.new ('Must have 8 digits') if account_number.digits.count != 8
        end
        @user_name = user_name
        @account_number = account_number
        @vip = vip
    end
    def account_number
        "#{@vip}-#{@account_number}"
    end
end



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



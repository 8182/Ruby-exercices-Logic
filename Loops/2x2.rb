#crear un porgrama donde se cree la siguiente secuencia **..**..**..**
n_user = gets.to_i
i = 0

n_user.times do |i|
    if i %4 == 0 || i%4 == 1 #el modulo dividra por 4 y si el resto es 0 se ejecutara
        print"*"
    else
        print"."
    end
    i+=1
end

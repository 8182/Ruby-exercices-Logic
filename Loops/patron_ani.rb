puts "ingresa la cantidad de cilos y despues el numero de * de cada ciclo, ademas del patron"
n_user = gets.to_i
n_patron = gets.to_i
patron = gets.chomp

n_user.times do
    n_patron.times do
        print"#{patron}"
    end
    print "\n"
end
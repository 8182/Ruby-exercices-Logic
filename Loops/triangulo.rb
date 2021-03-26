=begin
crear un programa que cree un triangulo de los pisos indicados por el usuario

=end

n_user = gets.to_i
n_user+=1
i = 0

n_user.times do |i|

    i.times do
        print"*"
    end

    i+=1
    puts"\n"
end
#el usuario ingresara un numero,se mostrara desde el 0 hasta ese numero, si es impar el numero en la secuencia sera remplazado por un *

n_user = gets.to_i
i= 0 

n_user.times do |i|

    if i % 2 == 0
        print i
    else
        print "*"
    end
    i+=1
end

-------------------------------with while----------------------

n_user = gets.to_i
i= 0
while i < n_user
    if i.even?
        print"#{i}"
    else
        print"*"
    end
    i+=1
end
----------------------with until--------------------
n_user = gets.to_i
i= 0 

until n_user < i
    if i.even?
        print"#{i}"
    else
        print"*"
    end
    i+=1
end
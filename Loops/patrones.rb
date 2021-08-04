#crear un porgrama donde se cree la siguiente secuencia **..**..**..**
i = 0

def patron2(i)
    i.times do |y|
        if y %4 == 0 || y%4 == 1
            print"*"
        else
            print"."
        end
    end
end

def patron3(i)
    i.times do |x|
        if
            x%6 == 0 || x%6 ==1 || x%6 == 2
            print"*"
        else
            print"."
        end
    end
end

# ..**||..**||..**||

def patronTriple(i)
    i.times do |z|
        if z % 6 == 0 || z % 6 == 1
            print"."
        elsif z % 6 == 2 || z % 6 ==3 
            print"*"
        else
            print"|"
        end 
    end
end


 patron2(12)

# patron3(10)
#patronTriple(15)
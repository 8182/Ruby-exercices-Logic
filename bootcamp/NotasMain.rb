#1 
print 1..255

#2
a = 1..255

a.each do |i|
    if i.odd?
        puts i
    end
end

#3
suma = 0
for i in(0..255)
    suma += i #esto quiere decir suma = suma = i 
    puts "Iteracion numero:#{i} y la Sumatoria#{suma}"
end

#4
x = [1,3,5,7,9,13]

x.each do|i|
    puts i
end
#5

a = [1,3,5,7,9,18,0,-2,-3]
puts a.max

#6

c = [2, 10, 3]
prom = 0
c.each do|i|
    sumatoria = prom +=i
    puts sumatoria/c.length
end

#10
arr = [1, -4, 5, -3, 10, -2]

arr.each_with_index do |value, index|
    if value < 0
        arr[index] = 0
        
    end
end
print arr

#11
yoSoyUnArreglo = [1,5,2,21,34,55,1,3,13,8]
promedio = yoSoyUnArreglo.sum / yoSoyUnArreglo.length
newhash = {"min" => yoSoyUnArreglo.min, "max" => yoSoyUnArreglo.max, "prom" => promedio}
puts newhash

#12

x = [1, 5, 10, 7, -2]
x.each do |i|
    newCode = i +1
    puts i
end


#    puts i.to_i << [i.to_i+1]

####################################
numeros = [1, 2, 3, -4, 5, 6, 7, 8, -9]
a = numeros.select{|i|i < 0}
trans = ""
a.each do |i|
    i = "dojo"
    trans = i
end



puts dojo

if numeros <= 0
    puts "dojo"
else
    
end
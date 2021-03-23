#siempre guardar la cantidad de valores en una variable
a = [100, 200, 1000, 5000, 10000, 10, 5000]
filtro = [] #creacion del nuevo array donde se guardaran los datos filtrados
n = a.count #contador de la cantidad de elementos

n.times do |i| # en base a la cantidad de datos se realizara la accion el mismo numero de veces
    if a[i] >= 1000
        filtro.push a[i] #se le envian los datos al nuevo array con push, iterando a en cada uno de sus elementos, ademas de haber aplicado el filtro
    end
end
print filtro
Arrays & Hash 
    Conceptos
        Array: coleccion de datos, se crea con [] y se determina cada elemento por "," ej: a = [1,2,3,4,"hola",3.48]  
        indice: posicion que ocupa un elemento en un array
        filtrar: tomar un arreglo y eliminar valores segun un criterio (*tambien se pueden agregar elementos)
        transformar: tomar un arreglo y modificar valores segun algun criterio
        #en ruby los arrays son mutables, se pueden concadenar y multiplicar, entre otros (sin importar su contenido)
        #el indice numerico empieza desde 0 en un array 
        #para acceder a un dato en cierta posicion a[1,5] --> traera los datos que esten en la posicion 1 y 5 
        #tambien se puede acceder con indices negativos, estos contaran desde el ultimo dato ej: a[-1] --> 3.48

    Metodos de arrays y hashes:
        .map --> se usa principalmente para transformar datos
        .sum --> sumara todos los elementos del array(solo numeros(int,float,etc))
        .each --> recorre cada elemento del array
        .slice --> corta ciertos elementos del array
        .select --> seleciona los valores que esten en los parametros
        .delete_if --> borrara los elementos segun el criterio dado
        .fetch --> establece un mensaje de error en caso de tomar alguna posicion que no existe en el array
        .first --> toma el primer elemento del array
        .last --> tomar el ultimo elemento del array
        .take -->toma los elementos indicados a.take(3) #=>(1,2,3)      
        .length --> indicara la cantidad de elementos
        .count --> indicara la cantidad de elementos
        .size --> indicara la cantidad de elementos
        .empty? --> el array esta vacio?
        .include?--> pregunta por un valor en especifico a.include?(99) #=> false
        .push -->agrega elementos al array  (tambien se puede usar <<)
        .delete --> borra un elemento (a.delete(1) #=> [1,3,4,5])
        .delete_if --> borrara si se cumple la condicion
        .join --> transforma cada elemento del array en un str, separados por el elemento dado a.join("-")
        .split --> transforma un string en un array, se le pueden 

        ejemplos:
        a = [1,2,3,4,5]
        a.map { |v_string| v_string.upcase } --> en caso de haber string se transforma por completo a mayusculas
        a.sum #=> 15
        a.each { |item|print "#{item}"}
        a.slice(1,3)
        a.select { |item| item > 1 } #(evaluacion booleana en base al valor numerico de todos los componentes del array)
        a.delete_if { |item| item == 1 }

        a.push(6) #=> a = [1,2,3,4,5,6]  (o a << 6)
        a.count 2 #=> 1 -> esto debido a que solo hay un 2 en el array
        a.count{|x|x.even?} #=> 2}
        a.join("-") #=> 1-2-3-4-5
        "hola como estas?".split #=> ["hola", "como", "estas"]
        #***para recorrer cada elemento del array en una iteracion:
        a = [1,2,3,4,5]
        n = a.count
        n.times do |i|
            puts a[i] = a[i].to_f
        end
        #o lo mismo en una linea
        n.times{|i| a[i] = a[i].to_f}

        #***Transformar y guardar los valores en un nuevo array
        n = ARGV.count
        array = [] # o array.new
        n.times do|i|
            array.push ARGV[i].to_i
        end
        # n.times{|i| array.push ARGV[i].to_i}
        print array


    hash 
        a = {'name' => 'brayan', 'location' => 'chile'} --> creacion de un hash
        puts a['name'] #=> 'brayan' --> entregandole la llave a la variable para obtener el valor
        a["city"] #=> nil --> si se ingresa una llave que no existe en la biblioteca el valor devuelto sera nil
        a["last_name"] = valdebenito --> agregamos un valor con su llave a la coleccion
        puts a -->  {"name"=>"brayan", "location"=>"chile"} #=> mostrara toda la biblioteca, sus llaves y valores
        a['name']=nil --> se elimina el valor asignandole nil, se puede volver a asignar cualquier valor



ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]
---------------------------------------------------
Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]
----------------------------------------------------
empty_table = Array.new(3) {Array.new(3)} #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

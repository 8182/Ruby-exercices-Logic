Arrays y hash
    Conceptos
        *los arrays son mutables
        indice: posicion que ocupa un elemento en un array
        filtrar: tomar un arreglo y eliminar valores segun un criterio (*tambien se pueden agregar elementos)
        transformar: tomar un arreglo y modificar valores segun algun criterio

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



        ejemplos:
        a = [1,2,3,4,5]
        a.map { |string| string.upcase }
        a.sum #=> 15
        a.each { |item|print "#{item}"}
        a.select { |item| item > 1 } #(evaluacion booleana en base al valor numerico de todos los componentes del array)
        a.delete_if { |item| item == 1 }
        a[1..3] #=> [2, 3, 4]
        a[1..-3] #=> [2, 3, 4]
        a.at(0) #-> 1
        a.push(6) #=> a = [1,2,3,4,5,6]  (o a << 6)
        a.count 2 #=> 1 -> esto debido a que solo hay un 2 en el array
        a.count{|x|x.even?} #=> 2

        #***para recorrer cada elemento del array en una iteracion:
        a = [1,2,3,4,5]
        n = a.count
        n.times do |i|
            a[i] = a[i].to_f
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


hash --> a = ['name' => 'brayan', 'location' => 'chile']  ()

ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]
---------------------------------------------------
Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]
----------------------------------------------------
empty_table = Array.new(3) {Array.new(3)} #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

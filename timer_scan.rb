#se pide un programa al cual se le entrege un array con las notas de un alumno, se creara una funcion
notas = [120, 50, 600, 30, 90, 10, 200, 0, 500] #en minutos
def evaluation(param1)
    indice = param1.count
    evaluation = []
    
    indice.times do|i|
        if param1[i] > 90
            evaluation.push "bien"
        else
            evaluation.push "mal"
        end
    end
    evaluation
end

#print notas
print evaluation(notas)


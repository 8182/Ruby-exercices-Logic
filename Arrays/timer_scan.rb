#

cases = [120, 50, 600, 30, 90, 10, 200, 0, 500] #en minutos


def cases(array)
    evaluation = []
    n = array.count
    
    n.times do|i|
        if array[i] > 90
            evaluation.push "bien"
        else
            evaluation.push "mal"
        end
    end
    evaluation
    
end

print "#{cases} \n"
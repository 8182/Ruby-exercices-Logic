def farenheit(f)
    celsius = (f + 40)/1.8-40
    puts"la temperatura en °C es: °#{celsius}"
end
puts"ingrese la temperatura en °F para ser transformada a °C"

farenheit(rand (50)) #no es necesario los parentesis en rand
#se podrian asignar la minima y maxima cantidad de grados °c en una variable y esta ser usada como parametro del rand ej: rand(g_cels)
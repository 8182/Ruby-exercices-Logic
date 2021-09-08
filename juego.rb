#se creara un programa que juegara al piedra papel o tijera


def juego(player)
    computer = ["piedra","papel","tijera"].sample
    if user_play != 'piedra' && user_play != 'papel' && user_play != 'tijera'
        
        puts 'tu argumento es inválido, debes ingresar: piedra, papel o tijeras'
        
    elsif (computer == 'piedra' && user_play =='papel')||
        (computer == 'tijera' && user_play =='roca')||
        (computer == 'papel' && user_play =='tijera')
        puts "ganaste"
    elsif computer == user_play
        puts'empate'
    else
        puts 'perdiste' 
    end
    puts "la computadora jugo #{computer}"
end 




=begin

otras formas de haerlo:
hacer 3 elsif 


=end

juego(piedra)
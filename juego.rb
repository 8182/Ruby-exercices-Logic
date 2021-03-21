#se creara un programa que juegara al piedra papel o tijera

user_play = ARGV[0]
computer = ["piedra","papel","tijera"].sample
puts "la computadora jugo #{computer}"


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


=begin

=end


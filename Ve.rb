#la velocidad de escape de un planeta esta determinada por la siguiente ecuacion:
# Ve = sqrt(2*g*r)


g = ARGV[0].to_f
r = ARGV[1].to_f

puts Math.sqrt(2*(g*r))



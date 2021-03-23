#este programa creara listas en html
lista = ARGV[0].to_i
puts "<ul>"
(lista - 2).times  do |i| 
    puts "   <li> #{i + 1 } </li>"
end
puts "<ul>"
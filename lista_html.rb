html = "<ul>\n" #html partira con <ul> y el salto de linea, asi el iterador creara las listas entregadas
items = ARGV[0].to_i
i = 0
while i < items
    i += 1
    html += "\t<li> item #{i} </li>\n"
end
html += "</ul>"#al final se le suma el </ul> a la variable con todos los valores del loop
puts html
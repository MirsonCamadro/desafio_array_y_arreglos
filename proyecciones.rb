data = File.open('ventas_base.db').read.split(",").map(&:to_f)

def proyeccion(array, aumento, desde, hasta)
    filtered_array = array[desde..hasta]
    sum = filtered_array.map{ |x| x*aumento}.sum
end

# pp proyeccion(data, 1.1, 0, 5)
# pp proyeccion(data, 1.2, 6, 11)
output = File.open("resultados.data", "w")
output.write(proyeccion(data, 1.1, 0, 5))
output.write("\n")
output.write(proyeccion(data, 1.2, 6, 11))
data = File.open("notas.data").readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(data)
    result = []
    data.each do |line|
        result.push([line[0], line.map{|x| x.to_i}.max])
    end
    return result
end

pp nota_mas_alta(data)
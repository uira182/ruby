p = ARGV
n = 0
    if p.count > 1 then
        p.each do |p|
            puts "[#{n}] - Pesquisa: "+p
            n = n + 1
        end
    else
        puts "Unico Valor: "+p[0]
    end
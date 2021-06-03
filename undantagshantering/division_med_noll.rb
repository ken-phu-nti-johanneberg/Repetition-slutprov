def heltalsdivision(taljare,namnare)
    begin
        kvot = taljare / namnare
    rescue ZeroDivisionError => e
        puts "Ett fel uppstod, division med 0."
        puts "Programmet avslutas"
        exit
    end
        return kvot
end

puts heltalsdivision(3,0)


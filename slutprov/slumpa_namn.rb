

# def main()
#     puts "Skriv antal namn du vill slumpa"
#     user_input = nil
#     while user_input != "exit"
        





def slumpa_namn()
    lista = File.read("namn_kvar.txt").split(" ")
    i = 0
    while i < 4
    j = rand(0..lista.length - 1)
    puts lista[j]
    lista.delete_at(j)
    File.read("namn_kvar.txt").delete[]
    end
end

puts slumpa_namn
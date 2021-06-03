
# En meny funktion 
# Många hjälpfunktioner
# Är det bättre att skriva "dagbok.txt" i text_file direkt eller skapa en variabel.

text_file = "dagbok.txt"

if File.file?(text_file) == true
    File.open(text_file, "a")
    File.open(text_file, "a").close
else
    File.open(text_file, "w")
    File.open(text_file, "w").close
end

def main()
    user_input = nil
    while user_input != "exit"
        meny()
        user_input = gets.chomp
        if user_input == "q"
            user_input = "exit"
        elsif user_input.to_i == 0
            add()
        elsif user_input.to_i == 1
            delete()
        end
    end
    puts File.read(text_file)
end

def meny()
    puts "Välj en funktion"
    puts "0 - lägg till ett inlägg"
    puts "1 - Rensa dagboken"
    puts "q = avlusta"
    
end

def add()
    text_file = "dagbok.txt"
    puts "Skriv in ett inlägg"
    inlagg = gets.chomp
    lista = File.open(text_file, "a")
    lista.write(inlagg)
    lista.close
    puts File.read(text_file)
end
    

def delete()
    File.delete("dagbok.txt")
end

main()

# Handlingsilsta.txt til en variabel


if File.file?("handlingslista.txt") == true
    lista = File.open("handlingslista.txt", "a")
    lista.close
else
    lista = File.open("handlingslista.txt", "w")
    lista.close
end

def meny()
    puts "Välkommen!"
    puts "Skriv vilken funktion du vill använda"
    puts "Skriv 0 för att avsluta"
    puts "Skriv 1 för att lägga till en produkt"
    puts "Skriv 2 för att visa listan" 
end

def main()
    user_input = ""
    while user_input != "quit"
        meny()
        user_input = gets.chomp.to_i

        if user_input == 0
            user_input = "quit"
        elsif user_input == 1
            add_to_shopping_list()
        elsif user_input == 2
            puts File.readlines("handlingslista.txt")
        end
    end
end



def add_to_shopping_list()
    puts "Skriv in en produkt som du vill lägga till"
    produkt = gets.chomp

    lista = File.open("handlingslista.txt", "a")
    lista.puts(produkt)
    lista.close

    rader = File.readlines("handlingslista.txt")

    puts "#{produkt} har lagts till i listan"
    puts "Listan innehåller #{rader.length} rader"
end
    
main()

# Gå in i main funktionen genom att skriva in i slutet
# Kan sedan från main aktivera de andra funktionerna
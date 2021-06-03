# Dokumentation


# .sort för att sortera arrayen
# Hur gör man vaildering??????????
# user_input = nil när du inte vill ha en klass från början. Den blir alltså klasslös. Brukar använda user_input = "" men då får den klassen String från början.

def tal_i_sorterad_array(array)
    sorted_array = array.sort
    user_input = nil
    new_array = []
    puts "Skriv in ett tal som du vill lägga till i den sorterade arrayen"
        while user_input != "exit"
            user_input = gets.chomp
            # if user_input.class == String && user_input != "exit"
            #     puts "Du måste skriva in en Integer, du skrev in en #{user_input.class}"
            #     puts "Försök igen!"
            # else
                array << user_input.to_i
                new_array = array.sort
                p new_array
            # end
        end
    p new_array
end

tal_i_sorterad_array([1,2,3,4,5,6,7])
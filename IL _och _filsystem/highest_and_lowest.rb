def highest_and_lowest()
    user_input = ""
    highest = 0
    while user_input < "exit"
        user_input = gets.chomp
        if user_input == "q"
            user_input = "exit"   
        elsif user_input.to_i > highest
            highest = user_input.to_i
        end
        puts "Det största talet just nu är #{highest}"
    end
end

highest_and_lowest()

# Hur gör man så att highest är en integer men har inget värde
# Kanske behöver inte göra det utan använder istället flera variabler
# Vill att den inte ska jämföras med 0 från början så att t.ex. -1 kan vara det högsta värdet.
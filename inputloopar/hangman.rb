# Funktioner som behövs

# Gissnings program liknande gissa_mitt_tal

# Sex gissnignar

# Lista med ord 

# Grafik

# Skickar ut *** för att visa hur många bokstäver

# Förbättringar - möjlighet att gissa hela ordet och inte efter bokstäver

# Senare visas bokstäver för varje rätt gissning
# *e*
# he*
# hej

# Att göra:
# Gör en funktion för display

# Gör en funktion som visar en lista av gissade bokstäver

# Kan även göra en funktion som tillåter användaren att gissa på hela ordet direkt. Gör strängen till en array

# Gör en funktion som genererar en random ord och gör en hidden_word som gömmer random ord.

# Fixa senare:

# Gör så att användaren kan både skriva stora och små bokstäver men ändå få rätt. Om bokstaven är rätt ska den skrivas i små bokstäver om inte det är den första bokstaven
# Gör så att man endast kan skriva en bokstav åt taget
# Skapa en list av bokstäver som spelare redan har gissat på

# Tillsist hur kan man optimera den.

# Tankar:
# Vad är ett bra if sats för ett fel meddelande? Kan använda true eller false som output för if-satserna då det avslutar while loopen. Kan sedan använda den information i en annan funktion för att sedan validera igen och ge en output ifall användaren gissade rätt eller fel.
# Använd hjälp funktioner ofta
# Gör inte allt i en funktion
# Kan lägga hjälpfunktionerna i en annan fil och sedan kan man använda require_relative "mapp/filnamn"
# Vad händer med ord som har två av samma bokstav ex. jazz eller kaffe.


# Lista med ord och hidden word test
def random_word()
    word_list = File.read("ordlista.txt")
    word_list = word_list.split(" ")
    secret_number = rand(0..word_list.length - 1)
    secret_word = word_list[secret_number]
    return secret_word
end        

def hide_the_word(secret_word)
    i = 0
    hidden_word = ""
    while i < secret_word.length
        hidden_word += "*"
        i += 1
    end
    return hidden_word
end


# funktion word length

# Main - byt namn
def display_hidden_word()
    secret_word = random_word()
    hidden_word = hide_the_word(secret_word)
    guesses = 6

    puts hidden_word
    while hidden_word != secret_word && guesses != 0
    user_input = gets.chomp
        if contains(secret_word, user_input) == true
            hidden_word = guess_the_word(secret_word, user_input, hidden_word)
            puts "Du har #{guesses} gissningar kvar"
            puts hidden_word
        else
            guesses -= 1
            puts "Försök igen"
            puts "Du har #{guesses} gissningar kvar"
            puts hidden_word
        end
    end

    if guesses == 0
        puts "Spelet är över!"
        puts "Ordet var #{secret_word}"
        puts "Tryck ENTER för att avsluta"
        pause_input = gets
    elsif hidden_word = secret_word
        puts "Spelet är över!"
        puts "Bra jobbat, ordet var #{secret_word}"
        puts "Tryck ENTER för att avsluta"
        pause_input = gets
    end
end

# ex
# kollar om secret_word innehåller user_input
def contains(secret_word, user_input)
i = 0
    while i < secret_word.length
        if user_input == secret_word[i]
            return true
        end
        i += 1
    end
    return false
end

# Kollar om user_input == secret_wor[i]
def guess_the_word (secret_word, user_input, hidden_word)
    i = 0
    while i < secret_word.length
        if user_input == secret_word[i]
            hidden_word[i] = user_input
        end
        i += 1
    end
    return hidden_word
end 

display_hidden_word()


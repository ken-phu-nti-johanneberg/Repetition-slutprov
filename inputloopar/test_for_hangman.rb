# Testa funktionerna för att slumpa fram ett ord.
# Implementera sedan det i hangman.rb
# Behöver man return. JAAAAAAA


# Crash varför blir secret_word.length i rad 20 nil ibland. Kan ej använda .length på nil och krashar därför. Alla ord verkar fungera. 
# Fel eftersom att i word_list.length är 9 och index går max till 8 detta leder till att secret_word ibland blir nil på index 9 eftersom att det finns något där.

# Fel i programmet(fel antal tecken):
# Ibland är det inte rätt mängd *. För mycket eller för lite
# Ord som brukar bli fel kaffe och ketchup
# För kaffe blir det för många *
# För ketchup blir det för få *
# Tvättmedel för många *
# Varför fungerar det o test.rb och inte i hangman.rb

# Fix - förmodligen för att jag genererar ett nytt ord vid två tillfällen och leder till olika antal tecken. Hur behåller jag variablerna över funktionerna.

# Fel i programmet eller bara att det inte går:
# Funktionen känner inte igen å, ä, ö.
# Ord som ostbågar, tvättmedel och Bröd fungerar inte. Spelaren kan inte vinna.
# Bröd är skriven med stor B och spelaren måste skriva en stor b.
# Gör så att man bara behöver skriva in små bokstäver men att ordet i sig är skriven med en stor bokstav.

def word()
    word_list = File.read("ordlista.txt")
    word_list = word_list.split(" ")
    secret_number = rand(0..word_list.length - 1)
    secret_word = word_list[secret_number]
    return secret_word
end        

def hide_the_word()
    secret_word = word()
    i = 0
    hidden_word = ""
    while i < secret_word.length
        hidden_word += "*"
        i += 1
    end
end

# def main()
#     secret_word = word()
#     hidden_word = hide_the_word(secret_word)
#     puts secret_word
#     puts hidden_word
# end

# main()
hide_the_word()
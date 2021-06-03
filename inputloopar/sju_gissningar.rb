puts "Gissa på ett tal mellan 0 och 500"
puts "Du får sju gissningar"
puts "Skriv 'exit' avsluta programmet"

mitt_tal = rand(0..500)
# Testa varför man skulle vilja använda user_input = nil
user_input = 0
user_check = ""


guesses = 6

while user_input.to_i != mitt_tal
    user_input = gets.chomp
    puts user_input
    
    if guesses == 0
        user_input = mitt_tal
        user_check = "wrong"
    elsif user_input == "exit"
        user_input = mitt_tal
        user_check = "wrong"
    elsif user_input.to_i < mitt_tal
        puts "högre"
        guesses -= 1
        puts "Du har #{guesses+1} gissningar kvar"
    elsif user_input.to_i > mitt_tal
        puts "lägre"
        guesses -= 1
        puts "Du har #{guesses+1} gissningar kvar"
    end

end

if user_check == "wrong"
    puts "Det rätta svaret var #{mitt_tal}"
    puts "Du hade #{guesses+1} gissningar kvar"
else
    puts "Rätt mitt tal var #{mitt_tal}"
    puts "Du hade #{guesses} gissningar kvar"
end

puts "Tryck ENTER för att avsluta"

pause_input = gets
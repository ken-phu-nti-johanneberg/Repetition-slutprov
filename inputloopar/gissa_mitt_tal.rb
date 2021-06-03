puts "Gissa på ett tal mellan 0 och 500"
puts "Skriv 'exit' avsluta programmet"

mitt_tal = rand(0..500)
user_input = 0
user_check = ""

guesses = 0

while user_input.to_i != mitt_tal
    user_input = gets.chomp
    puts user_input

    if user_input == "exit"
        user_input = mitt_tal
        user_check = "wrong"
    elsif user_input.to_i < mitt_tal
        puts "högre"
        guesses += 1
    elsif user_input.to_i > mitt_tal
        puts "lägre"
        guesses += 1
    end

end

if user_check == "wrong"
    puts "Det rätta svaret var #{mitt_tal}"
    puts "Du gissade #{guesses} gånger"
else
    puts "Rätt mitt tal var #{mitt_tal}"
    puts "Du gissade #{guesses} gånger"
end

puts "Tryck ENTER för att avsluta"

pause_input = gets

# Varför vill den inte avsluta
# user_input = gets.chomp.to_i löser problemet
# to_i på chomp


# user_input som string?? user_input som integer??
# Skriv i en annan ordning. Exit först

# Lite långsam!
# optimeringar???
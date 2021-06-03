# Funktion som slumpar antal pinnar

# Funktion som tar bort pinnar från det totala

# Fuktion som tillåter en skriva namn för TVÅ SPELARE

# Hur vet man vem som vinner? if player1 = gets.chomp.to_i - antal sticks = 0 vinner den andra

# Behövs det två while loopar? En då variable != "exit" och en då if sticks_tot == 0 variable == "exit"

# Spelet verkar inte avsluta om spelare 1 vinner på grund av en gets input från spelare 2.
# Fix - MYCKET ANVÄNDAR, syntaxen break avslutar while loopen och skippar gets inputen från spelare 2.

# Validering, spelare får inte ta bort hur många pinnar som helst. Kan inte ta bort pinnar så att antal pinnar blir ett negativt värde

# Hur randomisar man vem som börjar

# Programmera en datorn att möta mot, hur gör man så att datorn inte tar bort ett antal som gör det till ett negativt värde. KAnske fungerar om man bara sätter if sticks < 0

# Spel för två spelare
# def nim()
#     sticks_tot = rand(1..14)
#     puts "Skriv in ett namn för spelare 1"
#     player_1 = gets.chomp
#     puts "Skriv in ett namn för spelare 2"
#     player_2 = gets.chomp
#     puts "Det finns #{sticks_tot} pinnar i högen"
#     while sticks_tot > 0
#         puts "Hur många pinnar vill #{player_1} ta bort?"
#         player1_sticks_delete = gets.chomp.to_i
#         sticks_tot -= player1_sticks_delete
#         if sticks_tot == 0
#             puts "#{player_2} vann!"
#             break
#         end
#         puts "Det finns nu #{sticks_tot} pinnar kvar"
#         puts "Hur många pinnar vill #{player_2} ta bort?"
#         player2_sticks_delete = gets.chomp.to_i
#         sticks_tot -= player2_sticks_delete
#         if sticks_tot == 0
#             puts "#{player_1} vann!"
#             break
#         end
#         puts "Det finns nu #{sticks_tot} pinnar kvar"
#     end
#     puts "Spelet är över"
# end

# Spel mot dator
def nim()
    sticks_tot = rand(1..100)
    puts "Skriv in ett namn"
    player_1 = gets.chomp
    puts "Det finns #{sticks_tot} pinnar i högen"
    while sticks_tot > 0
        puts "Hur många pinnar vill #{player_1} ta bort?"
        player1_sticks_delete = gets.chomp.to_i
        sticks_tot -= player1_sticks_delete
        if sticks_tot < 0
            puts "Datorn vann!"
            break
        end
        puts "Det finns nu #{sticks_tot} pinnar kvar"
        ai_sticks_delete = rand(1..20)
        puts "Datorn tog bort #{ai_sticks_delete} pinnar"
        sticks_tot -= ai_sticks_delete
        if sticks_tot < 0
            puts "Du vann!"
            break
        end
        puts "Det finns nu #{sticks_tot} pinnar kvar"
    end
    puts "Spelet är över"
end

nim()
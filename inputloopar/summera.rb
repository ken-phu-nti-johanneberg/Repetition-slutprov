
def input_meny()
    puts "Hej skirv in tal som du vill summera!"
    puts "0 för att avsluta!"
    puts "1 för att skriva in ett tal"
end

user_input = ""
sum = 0

    while user_input != "quit"
        input_meny()
        user_input = gets.chomp.to_i
        if user_input == 0
            user_input = "quit"
            puts "summan blev #{sum}"
        elsif user_input == 1
            puts "skriv in ett tal som du vill addera!"
            user_input = gets.chomp.to_i
            sum += user_input
            puts "summan är #{sum}"
        end
    end   

# Fortsätt utveckla
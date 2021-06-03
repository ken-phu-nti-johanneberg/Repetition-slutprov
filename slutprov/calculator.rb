

def main()
user_input = nil
    while user_input != "exit"
        puts "Skriv in en addition eller en division"
        puts "Skriv exit för att avsluta"
        user_input = gets.chomp
        if contains(user_input) == true
            addition(user_input)
        elsif contains(user_input) == false
            division(user_input)
        end
    end
end

def contains(user_input)
i = 0
    while i < user_input.length
        if user_input[i] == "+"
            return true
        elsif user_input[i] == "/"
            return false
        end
        i += 1
    end
end

def addition(user_input)
    numbers = user_input.split("+")
    numbers = numbers.map!(&:to_i)
    sum = numbers[0] + numbers[1]
    puts sum
end

def division(user_input)
    numbers = user_input.split("/")
    numbers = numbers.map!(&:to_i)
    sum = numbers[0] / numbers[1]
    puts sum
end

main()
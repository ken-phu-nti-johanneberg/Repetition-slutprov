def two_funny_facts_about(number)
    begin
        power_of_two = 2**number

        integer_quotient = 100 / number
    rescue ZeroDivisionError => e
        puts "Du kan inte dividera med 0"
        puts "Försök igen"
        number = gets.chomp.to_i
        retry
    rescue TypeError => e
        puts "Du måste skriva in en Integer"
        puts "Du skrev in en #{number.class}"
        puts "Försök igen"
        number = gets.chomp.to_i
        retry
    end


    puts "Här kommer två roliga fakta om talet #{number}."
    puts "Rolig fakta #1: Två upphöjt med #{number} är #{power_of_two}"
    puts "Rolig fakta #2: #{number} får plats #{integer_quotient} hela gånger i 100."

end

# two_funny_facts_about(0)
# two_funny_facts_about("tre")
two_funny_facts_about([123,231])
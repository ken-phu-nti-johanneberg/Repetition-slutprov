# Beskrivning: Tar in en division som en sträng och sedan dividerar dem
# Argument: Sträng - en division som en sträng
# Return - Integer - kvoten av numberna från strängen
# Date: 2021-05-23
# By: Ken Phu

def division(division_string)
    if division_string.class == Integer || division_string.class == Array || division_string.class == Float
        puts "Du måste skriva in en sträng"
        puts "Du skrev in en #{division_string.class}"
        puts "Försök igen"
        exit
    else
    numbers = division_string.split("/")
    numbers = numbers.map!(&:to_i)
    sum = numbers[0] / numbers[1]
    puts sum
    end
end

division(6/3.0)
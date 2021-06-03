# Beskrivning: Tar in en addition som en sträng och sedan summerar dem.
# Argument1: String - tar in en addition som en sträng
# Return: Integer - summan av numbers[0] och numbers[1]
# Todo1: 
# Date: 2021-05-23
# By: Ken Phu

def addition(addition_string)
    numbers = addition_string.split("+")
     umbers = numbers.map!(&:to_i)
    sum = numbers[0] + numbers[1]
    puts sum
end

addition("123+2")
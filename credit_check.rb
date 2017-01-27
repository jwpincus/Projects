#checks to see if a number complies with the mod 10 algorithm\
require 'pry'
card_number = "342804633855673"

valid = false

sum = 0

counter = -3


while counter >= -(card_number.length + 8) # follow this pattern for the rest of the digits
    
    sum += card_number[counter].to_i
    
    if (card_number[(counter+1)].to_i * 2) > 9 #take the second right most digit and double it
        sum += ((card_number[counter+1].to_i * 2) - 9)  # add that number to a total, or if it is more than 9, subtract 9 from it, add the third right most digit to the sum
    else 
        sum += (card_number[(counter+1)].to_i * 2)
    end
    
    counter -= 2
   
end

if ((sum*9) % 10) == card_number[-1].to_i # if the right most digit of the card number is equal to the last digit of the sum, then it is valid
    valid = true
end

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
if valid
    puts "The number is valid!"
else
    puts "The number is invalid!"
end

 #binding.pry

# extension: the check will also work for amex



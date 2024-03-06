advice = "Few things in life are as important as house training your pet dinosaur."

#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". 
#But leave the advice variable as "house training your pet dinosaur.".

# p advice.rindex('h')
# p advice.rindex('r')
# advice.slice!(39, 70)
# p advice

#another way:
advice.slice!(0, advice.index('house'))
p advice

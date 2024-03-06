#The result of the following statement will be an error:

#puts "the value of 40 + 2 is " + (40 + 2)

#Why is this and what are two possible ways to fix this?
#It's because we're trying to concatenate a string object with an integer object.

#2 ways to fix this:
puts "the value of 40 + 2 is #{40 + 2}."

puts "the value of 40 + 2 is " + (40 + 2).to_s
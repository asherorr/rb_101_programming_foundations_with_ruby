#Starting with the string: famous_words = "seven years ago..."
#show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

#way 1
result = "Four score and " + famous_words
p result

#way 2
beginning = "Four score and "
beginning << famous_words
p beginning
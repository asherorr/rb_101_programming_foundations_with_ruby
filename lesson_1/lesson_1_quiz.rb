#Write a method that takes one argument, a sentence string, and returns an array of integers. 
#The value of each integer in the array should be equal to the length of the word in the corresponding position in the sentence. 
#For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].

def length_per_word(str_sentence)
    split_obj = str_sentence.split(" ")
    split_obj.map {|obj| obj.length}
end

p length_per_word("I love programming!")

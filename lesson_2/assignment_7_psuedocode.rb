#def sum
    #get user input for num1 and convert to integer
    #get user input for num2 and convert to integer
    #result = perform operation adding num1 to num2
    
#def str_concat
    #set variable new_string
    #iterate over each string in the array
    #concat string to new_string array
    
#def return_new_array(array_obj)
    #initialize new array
    #iterate over every other item in the array and append to the new array
    
#def problem(string, character_selected
    #If the character specified doesn’t occur at least 3 times, return nil. 
    #Initialize a counter and set it to 0.
    #Initialize a variable called str_obj_to_a. It will store the split method called on str_obj
    #* Iterate over each element in the array
    #* If the element matches the letter provided, update the counter by 1.
    #* When the counter hits the last letter in the string object, return that letter’s index.
        
def problem(str_obj, letter)
    return nil if str_obj.count(letter) < 3
    counter = 0
    str_obj_to_a = str_obj.split("")
    str_obj_to_a.each_index do |i|
        counter += 1 if str_obj_to_a[i].match?(letter)
        return i if counter == str_obj.count(letter)
    end
end
            
p problem("poopoopoo", "p")
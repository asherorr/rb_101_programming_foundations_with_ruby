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
    
#def problem(string, character_selected)
    #if the character specified doesn’t occur at least 3 times, return nil. 
    #initialize a counter and set it to 0.
    #initialize a variable called str_obj_to_a. It will store the split method called on str_obj
    #iterate over each element in the array
    #if the element matches the letter provided, update the counter by 1.
    #when the counter hits the last letter in the string object, return that letter’s index.
  
#actual code for the example above:      
#def problem(str_obj, letter)
#     return nil if str_obj.count(letter) < 3
#     counter = 0
#     str_obj_to_a = str_obj.split("")
#     str_obj_to_a.each_index do |i|
#         counter += 1 if str_obj_to_a[i].match?(letter)
#         return i if counter == str_obj.count(letter)
#     end
# end
  
#call the problem method and view the method's return value using p.   
#p problem("asherasherasher", "a")

# def merge_array(array1, array2)
#Initialize a method called merge_arrays, that accepts two arguments: array1 and array2
#Initialize an empty array to store the result (final_array)
#Iterate over each index in array1.
#Append the value at array1[index] to final_array
#Append the value at array2[index] to the final array.
#Return the final merged array

#actual code for the example above:   
# def merge_array(array1, array2)
#     result = array1.zip(array2).flatten
# end

#another solution
# def merge_array(array1, array2)
#   final_array = []

#   array1.each_index do |index|
#     final_array << array1[index]
#     final_array << array2[index]
#   end

#   final_array
# end
    

# p merge_array([1, 2, 3], [4, 5, 6])
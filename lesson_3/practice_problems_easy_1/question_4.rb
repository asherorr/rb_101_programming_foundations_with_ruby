#The Ruby Array class has several methods for removing items from the array.
#Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

#delete_at returns the deleted object, per the given index passed in as an argument.
#delete returns the deleted object specified by the argument passed in, rather than the index value. 
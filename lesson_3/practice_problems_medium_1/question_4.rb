#Alyssa was asked to write an implementation of a rolling buffer.
#Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

#She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
#Is there a difference between the two, other than what operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#Both methods have the same return value. However, the first implementation returns a reference to the object passed in as the buffer argument, while the second returns a new object.

#Furthermore, the first implementation mutates the argument given by the buffer argument, while the second does not mutate its input_array argument.


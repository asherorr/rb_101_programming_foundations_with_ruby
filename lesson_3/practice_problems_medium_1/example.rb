# def append(s)
#   s << '*'
# end

# t = 'abc'
# b = t

# puts "T's object id: #{t.object_id}"
# puts "\nMethod call: #{append(t)}"

# puts "\nT was mutated. The value is now: #{t}"
# puts "It still points to the same object in memory, though: #{t.object_id}"

# puts "Value of B: #{b}. Object ID of b: #{b.object_id}"

# Mutating method with respect to the String used to call it
# original_text = "Hello, world!"
# puts original_text.object_id
# original_text.sub!("world", "Ruby")

# puts "Original Text: #{original_text}"  # Output: Original Text: Hello, Ruby!
# puts original_text.object_id

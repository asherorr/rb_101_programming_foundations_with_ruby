#Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". 
#He is not familiar with regular expressions. 
#Alyssa supplied Ben with a method called is_an_ip_number? that determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it.

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

#Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. 
#You're not returning a false condition
#You're also not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

def is_an_ip_number?(str)
  # Attempt to convert the string to an integer
  number = str.to_i

  # Check if the conversion was successful and the number is within the valid range (0 to 255)
  if str =~ /^\d+$/ && number >= 0 && number <= 255
    return true
  else
    return false
  end
end

# first solution
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   if dot_separated_words.size != 4
#     return false
#   else
#     while dot_separated_words.size > 0 do
#       word = dot_separated_words.shift
#       return false if is_an_ip_number?(word) == false
#       break unless is_an_ip_number?(word)
#     end
#   end
#   return true
# end

#refactored solution
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_ords.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("98.139.180.149")
p dot_separated_ip_address?('98.1.1.1.1.1.1')
p dot_separated_ip_address?('98.180.149')
p dot_separated_ip_address?('98.asher.180.149')
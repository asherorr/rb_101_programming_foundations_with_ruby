# #use of pry
# require "pry"

# counter = 0

# loop do
#   counter += 1
#   break if counter == 5
#   binding.pry
# end

#use of tap

array = [1, 2, 3]

mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }
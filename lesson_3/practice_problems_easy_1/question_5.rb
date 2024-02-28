#Programmatically determine if 42 lies between 10 and 100.

def is_num_between_10_and_100(num)
  (10..100).cover?(num)
end

p is_num_between_10_and_100(2)
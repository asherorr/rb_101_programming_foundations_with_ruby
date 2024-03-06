a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#What is the output of this code?

#line 5 outputs the object id for the string object "forty two"
#line 6 outputs the object id for the string object "forty two"
#line 7 outputs the object id for the string object "forty two" (same as line 5)
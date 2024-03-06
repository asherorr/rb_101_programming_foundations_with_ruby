a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#what will this code output?

#line 5: object id for the integer 42.
#lins 6: object id for the integer 42 (same object that the variable a points to.)
#line 7: object id for the integer 42 (same object that the variable a points to.)
#Study the following code and state what will be displayed...and why:

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

#String_arg_one looks like this now: pumpkins
#String_arg_two looks like this now: pumpkinsrutabaga

#This is because the tricky_method method performs a non-mutating operation on string_param_one
#string_param_two, on the other hand, performs a mutating operation.
#What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

greeting

#greeting is nil here, and no "undefined method or local variable" exception is thrown.
#typically, when you reference an uninitialized variable, Ruby will raise an exception
#however, when you initialize a local variable within an if clause, even if the if clause isn't executed...
#... the local variable is initialized to nil.


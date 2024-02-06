#Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output. 
#Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().

def calculator
    Kernel.puts("Enter the first number >> ") 
    num1_str = Kernel.gets().chomp
    num1 = num1_str.to_i
    puts "Enter the second number >> "
    num2_str = Kernel.gets().chomp
    num2 = num2_str.to_i
    puts "Enter the operation (add, subtract, multiply, or divide) >> "
    operator = Kernel.gets().chomp
    case
    when operator == "add"
        result = num1 + num2
    when operator == "subtract"
        result = num1 - num2
    when operator == "multiply"
        result = num1 * num2
    when operator == "divide"
        result = (num1.to_f / num2.to_f)
    end
    Kernel.puts(result) 
end

calculator
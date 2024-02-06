def calculator
    puts "Enter the first number >> "
    num1_str = gets.chomp
    num1 = num1_str.to_i
    puts "Enter the second number >> "
    num2_str = gets.chomp
    num2 = num2_str.to_i
    puts "Enter the operation (add, subtract, multiply, or divide) >> "
    operator = gets.chomp
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
    puts result
end

calculator
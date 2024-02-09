# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output.
# Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().

def calculator
  Kernel.puts('Enter the first number >> ')
  num1 = Kernel.gets.chomp.to_i
  puts 'Enter the second number >> '
  num2 = Kernel.gets.chomp.to_i
  puts 'Enter the operation (add, subtract, multiply, or divide) >> '
  operator = Kernel.gets.chomp

  case operator
  when 'add'
    result = num1 + num2
  when 'subtract'
    result = num1 - num2
  when 'multiply'
    result = num1 * num2
  when 'divide'
    result = (num1.to_f / num2)
  end
  Kernel.puts(result)
end

calculator

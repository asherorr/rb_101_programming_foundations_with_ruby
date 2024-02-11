# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output.
# Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().
def prompt(message)
  Kernel.puts("=> #{message}")
end

def calculator
  prompt("Welcome to the Calculator!")
  prompt('Enter the first number: ')
  num1 = Kernel.gets.chomp.to_i
  prompt('Enter the second number: ')
  num2 = Kernel.gets.chomp.to_i
  prompt('Enter the operation (add, subtract, multiply, or divide):')
  operator = Kernel.gets.chomp

  result = case operator
  when 'add'
      num1 + num2
  when 'subtract'
      num1 - num2
  when 'multiply'
      num1 * num2
  when 'divide'
      num1.to_f / num2
  end
  prompt("The result is #{result}.")
end

calculator

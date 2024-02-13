# Refactor the original code from assignment 6 (calculator) using Rubocop

# Original code/solution below
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

prompt('Welcome to the Calculator! Enter your name: ')

name = ''
loop do
  name = Kernel.gets.chomp

  break unless name.empty?

  prompt('Make sure to use a valid name.')
end

puts "Hi #{name}!"

loop do # main loop
  num1 = ''
  loop do
    prompt('Enter the first number: ')
    num1 = Kernel.gets.chop.to_i

    break if valid_number?(num1)

    prompt('That is not a valid number. Try again.')
  end

  num2 = ''
  loop do
    prompt('Enter the second number: ')
    num2 = Kernel.gets.chomp.to_i

    break if valid_number?(num2)

    prompt('That is not a valid number. Try again')
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  Add
  Subtract
  Multiply
  Divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp
    break if %w[Add Subtract Multiply Divide].include?(operator)

    prompt('Must choose one of the options: Add, Subtract, Multiply, or Divide')
  end

  result = case operator
           when 'Add'
             num1 + num2
           when 'Subtract'
             num1 - num2
           when 'Multiply'
             num1 * num2
           when 'Divide'
             num1.to_f / num2
           end

  prompt("The result is #{result}.")

  prompt('Do you want to perform another calculation? Enter Y to calculate again.')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Goodbye!')

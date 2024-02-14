def prompt(message)
  Kernel.puts("=> #{message}")
end


def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end


def get_name()
  prompt("Welcome to the Calculator! Enter your name: ")
  name = ''
  loop do
    name = Kernel.gets().chomp()
    if name.empty?()
      prompt("Make sure to use a valid name.")
    else
      puts "Hi #{name}!"
      break
    end
  end
end


def get_first_num
  num1 = ''
  loop do
    prompt('Enter the first number: ')
    num1 = Kernel.gets.chomp
    if valid_number?(num1)
      return num1.to_i
    else
      prompt("That is not a valid number. Try again.")
    end
  end
end


def get_second_num
  num2 = ''
  loop do
    prompt('Enter the second number: ')
    num2 = Kernel.gets.chomp
    
    if valid_number?(num2)
      return num2.to_i
    else
      prompt("That is not a valid number. Try again")
    end
  end
end


def get_operator
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
    operator = Kernel.gets().chomp()
    if %w(Add Subtract Multiply Divide).include?(operator)
      return operator
    else
      prompt("Must choose one of the options: Add, Subtract, Multiply, or Divide")
    end
  end
end


def perform_calculation(number1, number2, operand)
  case operand
  when 'Add'
    return number1 + number2
  when 'Subtract'
    return number1 - number2
  when 'Multiply'
    return number1 * number2
  when 'Divide'
    return number1.to_f / number2
  end
end


def display_result(answer_provided)
  prompt("The result is #{answer_provided}.")
  sleep 2
end

def prompt_to_play_again
  prompt("Do you want to perform another calculation? Enter Y to calculate again.")
  answer = Kernel.gets().chomp()
  if answer.downcase.start_with?("y")
    main
  else
    prompt("Goodbye!")
  end
end

def main
  get_name
  num1 = get_first_num
  num2 = get_second_num
  operator = get_operator
  final_result = perform_calculation(num1, num2, operator)
  display_result(final_result)
  prompt_to_play_again
end


main
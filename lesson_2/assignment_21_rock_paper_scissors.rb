def welcome_message
  puts "Welcome to Rock, Paper, or Scissors!"
end


def ask_user_to_select_option
  loop do
    puts "Select an option:\n
    1 = Rock\n
    2 = Paper\n
    3 = Scissors\n
    Enter a number: "
    selection = gets.chomp.to_sym
    options = {"1": "Rock", "2": "Paper", "3": "Scissors"}
    if options.has_key?(selection)
      puts "You selected: #{options[selection]}"
      return options[selection]
    else
      puts "That is not a valid option. Please enter only 1, 2, or 3."
    end
  end
end
  

def computer_selects_option
  options = ["Rock", "Paper", "Scissors"]
  options.sample
end


def show_computer_selection(selection)
  puts "The computer chose #{selection}"
end


def compare_user_and_computer_selection(user_selection, computer_selection)
  conditions = {
    "Rock": "Scissors",
    "Paper": "Rock",
    "Scissors": "Paper"
  }
  if conditions.key(computer_selection).to_s == user_selection
    puts "You won!"
  elsif user_selection == computer_selection
    puts "Draw!"
  else
    puts "You lost!"
  end
end

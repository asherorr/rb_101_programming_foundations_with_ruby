def welcome_message
  puts "Welcome to Rock, Paper, or Scissors!"
end


def ask_user_to_select_option
  loop do
    puts "Select an option: "
    puts "1 = Rock"
    puts "2 = Paper"
    puts "3 = Scissors"
    puts "\nEnter a number: "
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
  puts "The computer chose: #{selection}"
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
    puts "You lost!".sleep(2)
  end
end


def prompt_user_to_play_again
  puts "Would you like to play again? Enter Y for yes and N for no."
  user_response = gets.chomp
  if user_response.downcase == "y"
    main
  else
    puts "Goodbye!"
  end
end
    

def main
  welcome_message
  users_selection = ask_user_to_select_option
  computers_selection = computer_selects_option
  show_computer_selection(computers_selection)
  compare_user_and_computer_selection(users_selection, computers_selection)
  prompt_user_to_play_again
end

main
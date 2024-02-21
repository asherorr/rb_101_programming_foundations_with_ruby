def welcome_message
  puts "Welcome to Rock, Paper, Scissors, Spock, or Lizard!"
  puts "When a player (you or the computer) reaches 3 wins, the program will exit."
end


def return_user_choice
  loop do
    puts "\nSelect an option: "
    puts "1 = Rock"
    puts "2 = Paper"
    puts "3 = Scissors"
    puts "4 = Spock"
    puts "5 = Lizard"
    puts "\nEnter a number: "
    selection = gets.chomp.to_sym
    
    options = {"1": "Rock", "2": "Paper", "3": "Scissors", "4": "Spock", "5": "Lizard"}
    if options.has_key?(selection)
      puts "\nYou selected: #{options[selection]}"
      return options[selection]
    else
      puts "That is not a valid option. Please enter only 1, 2, or 3."
    end
  end
end


def return_computer_choice
  options = %w(Rock Paper Scissors Lizard Spock)
  options.sample
end


def show_computer_selection(selection)
  puts "The computer chose: #{selection}"
  sleep(1.2)
end


def return_who_won(user_selection, computer_selection)
  conditions = {
      "Rock": ["Scissors", "Lizard"],
      "Paper": ["Rock", "Spock"],
      "Scissors": ["Paper", "Lizard"],
      "Spock": ["Scissors", "Rock"],
      "Lizard": ["Spock", "Paper"]
    }
    user_selection_to_sym = user_selection.to_sym
    array_obj = conditions[user_selection_to_sym]
    if array_obj.include?(computer_selection)
      return "Player won"
    elsif user_selection == computer_selection
      return "Draw"
    else
      return "Computer won"
    end
end


def display_who_won(return_value_from_return_who_won_method)
  if return_value_from_return_who_won_method == "Player won"
    puts "\nYou won!"
  elsif return_value_from_return_who_won_method == "Draw"
    puts "\nDraw!"
  else
    puts "\nYou lost!"
  end
  sleep(1.2)
end


def first_iteration_of_game
  welcome_message
  users_selection = return_user_choice
  computers_selection = return_computer_choice
  show_computer_selection(computers_selection)
  player_who_won = return_who_won(users_selection, computers_selection)
  display_who_won(player_who_won)
  return player_who_won
end


def welcome_message_for_following_round
  puts "\n --- Starting up the next round ---"
  sleep(1.2)
end


def following_iterations_of_game
  welcome_message_for_following_round
  users_selection = return_user_choice
  computers_selection = return_computer_choice
  show_computer_selection(computers_selection)
  player_who_won = return_who_won(users_selection, computers_selection)
  display_who_won(player_who_won)
  return player_who_won
end


def play_until_someone_wins_3_times(first_score)
  num_player_wins = 0
  num_computer_wins = 0
  num_player_wins += 1 if first_score == "Player won"
  num_computer_wins += 1 if first_score == "Computer won"
  while num_player_wins < 3 && num_computer_wins < 3
    following_games = following_iterations_of_game
    if following_games == "Player won"
      num_player_wins += 1
    elsif following_games == "Computer won"
      num_computer_wins += 1
    else
      num_player_wins += 0
    end
    puts "Your score: #{num_player_wins}"
    puts "Computer's score: #{num_computer_wins}"
    sleep(1)
  end
    puts "One of the players has reached 3 wins."
end


def prompt_user_to_play_again
  loop do
    puts "Would you like to play again? Enter Y for yes and N for no."
    user_response = gets.chomp
    if user_response.downcase == "y"
      main
    elsif user_response.downcase == "n"
      puts "Goodbye!"
      break
    else
      puts "That is not a valid option. Please enter Y or N."
    end
  end
end


def main
  first_game_results = first_iteration_of_game
  play_until_someone_wins_3_times(first_game_results)
  prompt_user_to_play_again
end


main
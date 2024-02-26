# frozen_string_literal: true

RULES_OF_RPS = {
    "Rock": %w[Scissors Lizard],
    "Paper": %w[Rock Spock],
    "Scissors": %w[Paper Lizard],
    "Spock": %w[Scissors Rock],
    "Lizard": %w[Spock Paper]
  }
  
def welcome_message_for_first_round
  puts 'Welcome to Rock, Paper, Scissors, Spock, or Lizard!'
  puts 'When a player (you or the computer) reaches 3 wins, the program will exit.'
end

def ask_user_for_input_and_validate
  loop do
    puts "\nEnter a number [ex: 1 for Rock]"
    puts '1 = Rock'
    puts '2 = Paper'
    puts '3 = Scissors'
    puts '4 = Spock'
    puts '5 = Lizard'
    selection = gets.chomp
    options = %w[1 2 3 4 5]
    return selection if options.include?(selection)

    puts 'That is not a valid input. Enter only 1, 2, 3, 4, or 5.'
  end
end

def return_user_selection(validated_user_input)
  user_input = validated_user_input.to_sym
  options = { "1": 'Rock', "2": 'Paper', "3": 'Scissors', "4": 'Spock', "5": 'Lizard' }
  options[user_input]
end

def show_user_selection(option_user_selected)
  puts "You selected: #{option_user_selected}"
end

def return_computer_selection
  options = %w[Rock Paper Scissors Lizard Spock]
  options.sample
end

def show_computer_selection(selection)
  puts "The computer chose: #{selection}"
  sleep(1.2)
end

def return_who_won(user_selection, computer_selection)
  losing_moves = RULES_OF_RPS[user_selection.to_sym]
  if losing_moves.include?(computer_selection)
    'Player won'
  elsif user_selection == computer_selection
    'Draw'
  else
    'Computer won'
  end
end

def display_who_won(return_value_from_return_who_won_method)
  if return_value_from_return_who_won_method == 'Player won'
    puts "\nYou won!"
  elsif return_value_from_return_who_won_method == 'Draw'
    puts "\nDraw!"
  else
    puts "\nYou lost!"
  end
  sleep(1.2)
end

def play_game
  validated_user_input = ask_user_for_input_and_validate
  user_selection = return_user_selection(validated_user_input)
  show_user_selection(user_selection)

  computer_selection = return_computer_selection
  show_computer_selection(computer_selection)

  player_who_won = return_who_won(user_selection, computer_selection)
  display_who_won(player_who_won)
  player_who_won
end

def play_game_for_first_time
  welcome_message_for_first_round
  play_game
end

def welcome_message_for_following_round
  puts "\n --- Starting up the next round ---"
  sleep(1.2)
end

def play_game_for_all_rounds_after_round1
  welcome_message_for_following_round
  play_game
end

def show_player_score(number_player_wins, number_computer_wins)
  puts "Your score: #{number_player_wins}"
  puts "Computer's score: #{number_computer_wins}"
end

def play_until_someone_wins_3_times
  num_player_wins = 0
  num_computer_wins = 0
  score = play_game_for_first_time
  num_player_wins += 1 if score == 'Player won'
  num_computer_wins += 1 if score == 'Computer won'
  show_player_score(num_player_wins, num_computer_wins)

  while num_player_wins < 3 && num_computer_wins < 3
    new_score = play_game_for_all_rounds_after_round1
    num_player_wins += 1 if new_score == 'Player won'
    num_computer_wins += 1 if new_score == 'Computer won'
    show_player_score(num_player_wins, num_computer_wins)
  end
end

def play_again
  puts 'One of the players has reached 3 wins.'
  loop do
    puts 'Would you like to play again? Enter Y for yes and N for no.'
    user_response = gets.chomp
    if user_response.downcase == 'y'
      play_until_someone_wins_3_times
    elsif user_response.downcase == 'n'
      puts 'Goodbye!'
      break
    else
      puts 'That is not a valid option. Please enter Y or N.'
    end
  end
end

def main
  play_until_someone_wins_3_times
  play_again
end

main

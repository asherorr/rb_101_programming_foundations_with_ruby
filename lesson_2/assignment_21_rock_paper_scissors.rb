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
      return selection
    else
      puts "That is not a valid option. Please enter only 1, 2, or 3."
    end
  end
end
  

def computer_selects_option
  options = [:"1", :"2", ":3"]
  selection = options.sample
end
# require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
   # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"  # code #end_game here
end

def initial_round

  sum = deal_card + deal_card
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit? (card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    
  elsif user_input == 'h'
    card_total = deal_card + card_total
  else 
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
 puts "Please enter a vaild command" # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  # binding.pry
  welcome
  card_sum = initial_round
 
  until card_sum >= 21 do
  hit = hit?(card_sum)
    if hit != card_sum
    card_sum = hit
    end
  display_card_total(card_sum)
  end
  end_game(card_sum)
end
    

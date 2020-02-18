require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  total = first + second
  display_card_total(total)
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
  elsif input == 's'
    total
  else
    invalid_command
    hit?(total)
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until(total > 21)
    total = hit?(total)
    display_card_total(total)
  end

  end_game
end
    

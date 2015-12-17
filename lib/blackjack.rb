def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1..11).to_a.sample
end

def display_card_total(value)
  puts "Your cards add up to #{value}"
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
  sum = 0

  2.times do
    sum += deal_card  
  end

  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  addition = 0 
  addition = deal_card if get_user_input == 'h'
  total += addition
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = 0
  card_sum += initial_round

  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end

  end_game(card_sum)
end
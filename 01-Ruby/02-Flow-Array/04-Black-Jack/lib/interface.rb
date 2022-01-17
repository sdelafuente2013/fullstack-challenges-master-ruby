require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card
is_finish = true

while is_finish
  puts "Card? 'y' or 'yes' to get a new card"
  response = gets.chomp
  if response.include?("y") || response.include?("yes")
    puts state_of_the_game(pick_bank_score, pick_player_card)
  else
    puts end_game_message(pick_bank_score, pick_player_card)
    is_finish = false
  end
end

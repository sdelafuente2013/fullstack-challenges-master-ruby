require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.

  # Opcion con case-when
  case
  when player_score > 21 || player_score < bank_score
    return "Lose"
  when player_score == 21
    return "Black Jack"
  when player_score == bank_score
    return "Push"
  when player_score > bank_score
    return "Win"
  end

  # Opcion con IF
  # if player_score > 21 || player_score < bank_score
  #   return "Lose"
  # elsif player_score == 21
  #   return "Black Jack"
  # elsif player_score == bank_score
  #   return "Push"
  # elsif player_score > bank_score
  #   return "Win"
  # end
end

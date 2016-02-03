module RockPaperScissorsHelper

  #All options
  PLAYS = ['rock', 'paper', 'scissors']

  #winning combos
  WINS = [
    ['rock', 'scissors'],
    ['paper', 'rock'],
    ['scissors', 'paper']
  ]

  def computer_selection
    PLAYS.sample
  end

  private

  def get_winner(human_move, computer_move)
    if human_move == computer_move
      "It's a draw, two #{human_move.capitalize}s... play again!"
    else
      if WINS.include?([human_move, computer_move])
      "You win! #{human_move.capitalize} beats #{computer_move.capitalize}"
      else
      "You lose...#{computer_move.capitalize} beats #{human_move.capitalize}"
      end
    end
  end

end
module RockPaperScissorsHelper

  #All options
  PLAYS = ['rock', 'paper', 'scissors']

  #winning combos
  WINS = [
    ['rock', 'scissors'],
    ['paper', 'rock'],
    ['scissors', 'paper']
  ]

  def play
    human_move = human_selection
    computer_move = computer_selection
    get_winner(human_move, computer_move)
  end

  def human_selection
    puts "Rock, paper, or scissors?"
    gets.chomp.downcase
  end

  def computer_selection
    PLAYS.sample
  end

  private

  def get_winner(human_move, computer_move)
    if human_move == computer_move
      puts "It's a draw, two #{human_move.capitalize}s... play again!"
    else
      if WINS.include?([human_move, computer_move])
      puts "You win! #{human_move.capitalize} beats #{computer_move.capitalize}"
      else
      puts "You lose...#{computer_move.capitalize} beats #{human_move.capitalize}"
      end
    end
  end

end
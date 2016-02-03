require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'erb'
#bring in the file
require_relative 'helpers/rps.rb'

#load the module
helpers RockPaperScissorsHelper

get '/' do
  erb :index
end

post '/result' do
  human_move=params[:move]
  #binding.pry
  computer_move=computer_selection
  winner = get_winner(human_move, computer_move)
  erb :result, locals: {game_result:winner}
end
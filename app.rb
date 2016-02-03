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
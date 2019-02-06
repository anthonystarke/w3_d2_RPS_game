require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/RPSGame.rb'
also_reload './models/*'
require 'pry'

get '/' do
  erb(:Home_Page)
end

get '/RPSgame_bot/:first_answer/' do

  game_new = RPSGame.new(params[:first_answer].to_s)
  @winner = game_new.play_bot()
  # binding.pry
  erb(:result)

end

get '/RPSgame/:first_answer/:second_answer' do

  game_new = RPSGame.new(params[:first_answer].to_s,params[:second_answer].to_s)
  @winner = game_new.decide_winner()
  erb(:result)

end

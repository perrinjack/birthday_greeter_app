# frozen_string_literal: true

require 'sinatra'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    redirect('/play')
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb(:play)
  end

  get '/attack' do
    $game.attack
    @player1 = $game.player1
    @player2 = $game.player2
    erb(:attack)
  end
end

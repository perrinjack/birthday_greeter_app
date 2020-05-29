# frozen_string_literal: true

require 'sinatra'
require './lib/player'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end
end

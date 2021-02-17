require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
enable :sessions

    get '/' do
      erb(:form)
    end

    post '/names' do
      player_1 = Player.new(params[:player_1])
      player_2 = Player.new(params[:player_2])
      $game = Game.new(player_1, player_2)
      redirect '/play'
    end

    get '/play' do
      @game = $game
      erb(:play)
    end

    get "/attack" do
      @game = $game
      @game.attack(@game.player_2)
      @game.switch_turn
      erb(:attack)
    end

    run! if app_file ==$0
  end

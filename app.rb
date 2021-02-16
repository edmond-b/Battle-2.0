require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
enable :sessions

    get '/' do
      erb(:form)
    end

    post '/names' do
      $player_1 = Player.new(params[:player_1])
      $player_2 = Player.new(params[:player_2])
      redirect '/play'
    end

    get '/play' do
      @player_1 = $player_1
      @player_2 = $player_2
      erb(:play)
    end

    get "/attack" do
      @player_1 = $player_1
      @player_2 = $player_2
      erb(:attack)
    end

    run! if app_file ==$0
  end

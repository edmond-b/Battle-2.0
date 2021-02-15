require 'sinatra/base'

class Battle < Sinatra::Base

    get '/' do
      "BATTLE!"
    end

    run! if app_file ==$0
  end

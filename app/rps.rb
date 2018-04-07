require 'sinatra/base'

class RPS < Sinatra::Application
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    session[:name] = params[:player_name]
    redirect('/game')
  end

  get '/game' do
    @name = session[:name]
    erb :play
  end


end
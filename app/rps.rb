require 'sinatra/base'
require_relative '../lib/game'

class RPS < Sinatra::Application
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    session[:game] = Game.new(params[:player_name], params[:spock_lizard])
    redirect('/game')
  end

  get '/game' do
    @name = session[:game].name
    @spock_lizard = session[:game].spock_lizard
    erb :play
  end


end
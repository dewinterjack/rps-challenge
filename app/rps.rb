require 'sinatra/base'

class RPS < Sinatra::Application
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    erb :index
  end

end
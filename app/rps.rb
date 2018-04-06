require 'sinatra/base'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb(:index)
  end

end
require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

  end

  post '/piglatinize' do
    erb :user_input
  end

  post '/piglatinize' do
    erb :user_input
  end
end

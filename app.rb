require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
     @new = PigLatinizer.new
     @pig_text = @new.piglatinize(params[:user_phrase])
    erb :pig_input
  end
end

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
    #getting the user input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    #created a method to make a new string
    @piglatin = pl.piglatinize(params[:user_phrase])
    #assigned an instance variable to the new item created with the user_phrase paremeter
    erb :results
    #connected it to the results in views
  end
end

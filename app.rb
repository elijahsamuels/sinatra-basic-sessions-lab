require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "generic_boring_password"
    end 
    
    get '/' do
        erb :index
    end 

  
    post '/checkout' do 
        session[:item] = params[:item]
        @session = session
        # binding.pry
        erb :checkout
    end
end

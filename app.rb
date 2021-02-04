require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Match route, assign what's after goodbye/ to hash with :name as key
  # assign value of :name to @name, send to .erb file to format and respond to client
  get '/goodbye/:name' do   
    @name = params[:name]
    erb :goodbye
  end

  # Match route, assign 2 params to instance variables, convert to integers
  # send to multiply.erb to format display and respond
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    erb :multiply
  end

end
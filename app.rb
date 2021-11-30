require 'sinatra'
require 'sinatra/reloader' if development?

get '/random-cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  params
  @random_name = params[:name]
  erb :index
end

get '/' do 
  "Hello"
end

get '/secret' do
  "Hello World"
end

get '/hello' do
  "3rd Input"
end

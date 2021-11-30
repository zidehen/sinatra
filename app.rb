require 'sinatra'
require 'sinatra/reloader' if development?

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
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

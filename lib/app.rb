require 'sinatra'
require 'shotgun'

#returns hello string when nothing is added after /
get '/' do
    "hello!"
  end

 #returns string 
get '/secret' do
    "This is a secret"
end

get '/othersecret' do
  "This is another secret"
end

get '/random-cat' do
  p params
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

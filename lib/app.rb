require 'sinatra'
require 'shotgun'

get '/' do
    "hello!"
  end

get '/secret' do
    "This is a secret"
end

get '/othersecret' do
  "This is another secret"
end

get '/cat' do
  erb(:index)
end

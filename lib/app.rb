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
#returns another string
get '/othersecret' do
  "This is another secret"
end
#returns random name stored in @name variable, accesses view file.
get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
#returns @name, but it is set by the user in the URL e.g.(?name=Linus)
post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end


get '/cat-form' do
  erb :cat_form
end
  

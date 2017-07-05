Build up sinatra
Write an application that displays a list of users
  get '/users'
  end
  config.ru


database
  table
    users
      migrations
tools/environment
   gems 

Being something and doing something
   Player.rb
      name, hometown
      player.full_name

  Doing Something

  Display
     ""

View
  Html

Controller
  take action
  receive inputs from users
     get '/users'
  response
Models
   Being Something
   Hold information
   "you can't book on Mondays"
Database

<!-- Reject -->
Coerce
Act
Return

get '/nhl/players' do

  @players = Player.all
   erb '/players/index.html'
end

get '/nhl/players' do
  @players = Player.all
   erb '/players/index.html'
end

get '/nhl/players/:id' do
  <!-- params = {id: 576} -->
  <!-- params[:id] -> 576 -->
  @player = Player.find(params[:id])
  erb('/players/show.html')
end

def player(id)
end


def erb(file)
<!--  -->
  file = File.read(file)
  template = ERB.new(file)
  template.result(binding)
end

<%= Player.find(parmas[:id]) %>

class User < ActiveRecord::Base

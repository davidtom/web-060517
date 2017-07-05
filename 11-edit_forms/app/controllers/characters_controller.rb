class CharactersController < ApplicationController
#
  get('/characters/new') do
    erb :'characters/new.html'
  end


  # create

  post('/characters') do
    binding.pry
    # params = {character: {name: 'bob', hometown: 'philly'}}
    # params[:character] -> {name: 'bob', hometown: 'philly', dob: ''}


    @character = Character.new(params[:character])


    # mass assignment
    # Character.new({foo: 'bob'})
    # <character>.foo=('bob')


    redirect "characters/#{@character.id}"
    # ["304", "/characters/1 "]
  end

  get('/characters/:id') do
    # params => {id: 1}
    @character = Character.find(params[:id])
    erb :'characters/show.html'
  end

  # get('/characters/:foo/askljsalk') do
  #   # params[:foo]
  # end

  get('/characters') do

  end



end

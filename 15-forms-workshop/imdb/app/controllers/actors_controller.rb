class ActorsController < ApplicationController
  def new
    
    # @foo = Actor.new
    # @actor.save
    # render ''
  end

  def index
    if request.html?
      render 'actors/index'
    else
      render json: {actors: [{id: 1, name: 'paul simon'}]}
  end
end

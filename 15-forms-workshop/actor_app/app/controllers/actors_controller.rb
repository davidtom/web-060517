class ActorsController < ApplicationController
  def new
    @actor = Actor.new(name: 'bob')
    @actor.save
    # <id: 1>
    # render 'actors/new'
  end

  def create
    @actor = Actor.new

    @actor.name = params[:actor][:name]
    @actor.hometown = params[:actor][:hometown]
    @actor.save

    redirect_to actor
  end

  def index
    @actors = Actor.all
  end

  def show

  end


  def act
    binding.pry
  end
end

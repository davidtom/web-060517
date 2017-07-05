class ActorsController < ApplicationController

  def new
    @actor = Actor.new
  end

  def create
  end

  #
  def index
    @actors = Actor.all

  end
end

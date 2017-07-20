class ActorsController < ApplicationController

  def index
    #create actor for form_for
    @actor = Actor.new
    #check to see what params there are and render view accordingly
    # byebug
    if !params[:actor]
      @actors = Actor.all
    else
      @actors = Actor.all.select do |actor|
        actor.name.downcase == params[:actor][:name].downcase
      end
    end
  end

  # def create
  #
  #   redirect_to actors_path
  # end



end

class BeersController < ApplicationController
  before_action :authenticated, only: [:new]
  
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(params.require(:beer).permit(:name, :abv))
    if @beer.save
      redirect_to beer_path(@beer)
    else
      puts @beer.errors.full_message
      render 'new'
    end
  end

  def search
  end

  def find_beer
    beer = Beer.find_by_name(params[:name])
    redirect_to beer_path(beer)
  end

  def show
  end

  def edit
  end
end

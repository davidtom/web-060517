class UsersController < ApplicationController

  def index
   @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def new
    @user = User.new

  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Hooray you signed up!"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      error = @user.errors.full_messages
      flash[:error] = error
      render 'new'
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

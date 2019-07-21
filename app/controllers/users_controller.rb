class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end 

  def create 
    @user = User.new user_params
    if @user.save
      # flash[:success] = "Welcome to the Sample App!"
      redirect_to user_url(@user)
    else
      render 'index'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :surname, :email, :password)
    end

end

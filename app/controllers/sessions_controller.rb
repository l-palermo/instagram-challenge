class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(login_params)
    if @user
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def destroy
  end

  private 

    def login_params
      params.require(:sessions).permit(:email, :password)
    end
end

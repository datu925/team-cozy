class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    user.is_trusted = false
    if user.save
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to :back
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end
end
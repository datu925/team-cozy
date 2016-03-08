class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])
    if user.save
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    render "logout"
  end
end
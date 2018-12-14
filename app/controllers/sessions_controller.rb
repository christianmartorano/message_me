class SessionsController < ApplicationController
  before_action :user_logged_redirect, only: [:new, :create]

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if !user.nil? && user.authenticate(params[:session][:password])
      flash[:success] = "Welcome #{user.username} !"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:negative] = "Username or Password invalid!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You successfully logged out."
    redirect_to login_path
  end

  private
    def user_logged_redirect
      redirect_to root_path if logged_in?
    end
end

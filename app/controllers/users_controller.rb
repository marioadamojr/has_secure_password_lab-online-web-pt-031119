class UsersController < ApplicationController
  def new
  end

  def create
    User.create(user_params)
    session[:name] = params[:user][:name]
    redirect_to '/homepage'
  end

  def login

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

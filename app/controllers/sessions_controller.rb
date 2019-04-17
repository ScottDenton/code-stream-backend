class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.all.find_by(username: params[:username])
      render json: @user
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "Logged Out"
  end

  # def user_params
  #   params.require(:user).permit(:username, :password)
  # end
end

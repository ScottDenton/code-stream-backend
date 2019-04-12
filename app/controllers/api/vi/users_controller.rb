class Api::Vi::UsersController < ApplicationController

def new
  @user = @favorable.users.new
end

def create
  @user = @favorable.users.new(user_params)
  if @user.save
  else
    redirect_to :new
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
end

private



def report_params
  params.require(:report).permit(:username, :password)
end


end

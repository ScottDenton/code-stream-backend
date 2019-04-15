class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]


  def index
    @users =User.all
      render json: @data
  end


  def create
    @user = User.create(user_params)
    if @user.save
            render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    if @user
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity  end

  def edit
    render json: @user, status: :accepted
  end


  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
  end


  def findExistingUser
    @user=User.find(user_params)
  end

  private

  def find_user
      @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end


end

class Api::V1::FavoritesController < ApplicationController
  before_action  :find_user, only: [:create, :index]
  before_action  :find_favorite, only: [:destroy]

  def index
    @favorites = @user.favorites

    render json: @favorites

  end

  def show
  end

  def create

    @favorite = Favorite.create(user_id: @user.id , followed_username: params[:followed_name] )
  end

  def destroy
    @favorite.delete
  end



private

  def find_user
    @user=User.find(params[:user_id])
  end

  def find_favorite
    @favorite =Favorite.find(params[:id])
  end
end

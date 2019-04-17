class Api::V1::FavoritesController < ApplicationController
  before_action :findExistingUser, only: [:create]


  def create

  end


private

  def findExistingUser

    @user=User.find(params[:user_id])
  end

end

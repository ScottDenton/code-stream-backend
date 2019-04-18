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

  def getUserVideos
    url = "https://api.twitch.tv/helix/videos?user_id=#{params[:twitch_id]}"
    headers={
      'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
    }

    response = HTTParty.get(url, headers: headers)
    @data= response.body

    render json: @data

  end

end

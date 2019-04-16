class Api::V1::VideosController < ApplicationController

  def index

    url = "https://api.twitch.tv/helix/videos?user_id=#{params[:user_id]}"
    headers={
      'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
    }
    response = HTTParty.get(url, headers: headers)
    @data= response.body
    render json: @data

    end

    def show
      url = "https://api.twitch.tv/helix/streams?game_id=509670"
      headers={
        'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
      }
      response = HTTParty.get(url, headers: headers)
      @data= response.body
      render json: @data

    end

end
# "11148817", "pajlada", game id = 509670
# find tech streams
# "https://api.twitch.tv/helix/streams?game_id=509670"

# from name to find user
  # url = "https://api.twitch.tv/helix/users?login=destiny
# from user to videos
# url = "https://api.twitch.tv/helix/videos?user_id=18074328"

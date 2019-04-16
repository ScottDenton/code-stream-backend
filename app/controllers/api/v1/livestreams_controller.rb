class Api::V1::LivestreamsController < ApplicationController

  def index
      url = "https://api.twitch.tv/helix/streams?game_id=509670"
      headers={
        'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
      }

      response = HTTParty.get(url, headers: headers)

      @data= response.body
      render json: @data
    end
end

class Api::V1::VideosController < ApplicationController

  def index
      url = "https://api.twitch.tv/helix/streams"
      headers={
        'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
      }

      response = HTTParty.get(url, headers: headers)

      @data= response.body
      render json: @data
    end

    def show


    end 
end

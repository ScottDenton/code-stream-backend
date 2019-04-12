
class ApplicationController < ActionController::API
before_action :getInitialStreams, only: :index

  def getInitialStreams
    url = "https://api.twitch.tv/helix/streams"
    headers={
      'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
    }

    response = HTTParty.get(url, headers: headers)

    @data= response.body

  end
end

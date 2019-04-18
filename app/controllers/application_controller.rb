
class ApplicationController < ActionController::API
#before_action :getInitialStreams, only: :index


  def current_user
    render json: Rails.application.credentials
    # if session[:user_id]
    #   @current_user ||= User.find(session[:user_id])
    # else
    #   @current_user= nil
    # end
  end

  # def getInitialStreams
  #   puts "corndog"
  #   url = "https://api.twitch.tv/helix/streams"
  #   puts Rails.application.credentials.twitch
  #   headers={
  #     'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
  #   }
  #
  #   response = HTTParty.get(url, headers: headers)
  #
  #   @data= response.body
  #
  # end


end


require 'httparty'
url = "https://api.twitch.tv/helix/streams"
headers={
  'Client-ID': Rails.application.credentials.twitch[:secret_api_key]
}

response = HTTParty.get(url, headers: headers)

puts response.body

class UserController < ApplicationController
  def index
    @user=User.find(1)
    @location = Location.first

    city = "sunnyvale"

    country = "ca"

    geo_url = "https://query.yahooapis.com/v1/public/yql?q=select%20*"+"%"+"20from"+"%"+"20geo.places.siblings%20where"+"%"+"20sibling_woeid"+"%"+"20in%20(select%20woeid"+"%"+"20from"+"%"+"20geo.places%20where"+"%"+"20text"+"%"+"3D%22"+ city +"%"+"2C%20" + country + "%"+"22%20limit%201)&format=json&diagnostics=true&callback="

    #geo_url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.places.siblings%20where%20sibling_woeid%20in%20(select%20woeid%20from%20geo.places%20where%20text%3D%22sunnyvale%2C%20usa%22%20limit%201)&format=json&diagnostics=true&callback="

    geo_response = HTTParty.get(geo_url)
    geo_response_hash = JSON.parse(geo_response.body)

    # woeid = geo_response_hash["query"]["results"]["place"]["woeid"]
    ap geo_response_hash["query"]["results"]["place"][0]["woeid"]

    # p "*"*40
    # weather_url = "https://query.yahooapis.com/v1/public/yql?q=select%20*"+"%"+"20from%20weather.forecast%20where%20woeid"+"%"+"3D%22"+ woeid + "%22&format=json&diagnostics=true&callback="
    # weather_response = HTTParty.get(weather_url)
    # weather_response_hash = JSON.parse(weather_response.body)
    # ap weather_response_hash
    
  end
end

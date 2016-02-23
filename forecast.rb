require 'HTTParty'
require 'json'

class Forecast

  def initialize(location: nil)
    @location = location
    # @results = JSON.parse(File.read("forecast.json"))
    @forecast = HTTParty.get("http://api.wunderground.com/api/#{ENV['WUNDERGROUND_KEY']}/forecast10day/q/#{@location}.json")
  end

  def forecast
      forecast = []
      @results["forecast"]["txt_forecast"]["forecastday"].each do |n|
        day = n["title"]
        text = n["fcttext"]
        forecast << [day, text]
      end
      forecast.each {|x| puts x}
    end
end

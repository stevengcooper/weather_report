require 'HTTParty'
require 'json'

class Forecast

  def initialize(location: nil)
    @location = location
    @results = JSON.parse(File.read("forecast.json"))
    # @forecast = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/forecast10day/q/"#{@zip_code}".json)
  end
end

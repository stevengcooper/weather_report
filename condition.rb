require 'httparty'

class Condition

  def initialize(location: nil)
    @location = location
    # @results = JSON.parse(File.read('conditions.json'))
    @results = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{@location}.json")
  end

  def location
    @results["current_observation"]["display_location"]["full"]
  end

  def temp
    @results["current_observation"]["temp_f"]
  end

  def wind
    @results["current_observation"]["wind_string"]
  end

  def humidity
    @results["current_observation"]["relative_humidity"]
  end

  def rain_today
    @results["current_observation"]["precip_today_string"]
  end

  def feels_like
    @results["current_observation"]["feelslike_f"]
  end
end

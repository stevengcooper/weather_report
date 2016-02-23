require 'httparty'
require 'json'

class Alert
  def initialize(location: nil)
    @location = location
    # @results = JSON.parse(File.read("alert.json"))
    @results = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/alerts/q/"#{@location}".json)
  end

  def description
    @results["alerts"][0]["description"]
  end

  def message
    @results["alerts"][0]["message"]
  end

  def expires
    @results["alerts"][0]["expires"]
  end

  def alert_exists
    if @results["alerts"][0]["type"] != [""]
      @results["alerts"][0]["message"]
    else
      puts "There are no alerts at this time"
    end
  end
end

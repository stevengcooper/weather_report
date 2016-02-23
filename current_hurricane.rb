require 'HTTParty'
require 'json'

class CurrentHuricane
  def initialize(location: nil)
    @location = location
    @results = JSON.parse(File.read("hurricane.json"))
    # @results = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/currenthurricane/view.json)
  end
end

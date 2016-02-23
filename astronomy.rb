require 'httparty'
require 'json'

class Astronomy

  def initialize(location: nil)
    @location = location
    @results = JSON.parse(File.read("astronomy.json"))
    # @astronomy = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/astronomy/q/"#{@zip_code}".json)
  end
end

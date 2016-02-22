require 'HTTParty'
class ForecastTenDay
  attr_reader :zip_code, :forecast
  def initialize(zip_code: nil)
    @zip_code = code
    @forecast = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/forecast10day/q/"#{@zip_code}".json)
  end
end

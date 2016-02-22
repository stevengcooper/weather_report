require 'httparty'
class Alert
  attr_reader :zip_code, :results
  def initialize(zip_code: nil)
    @zip_code = zip_code
    # @results = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/alerts/q/"#{@alert}".json)
  end



end

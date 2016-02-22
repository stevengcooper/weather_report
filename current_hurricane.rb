require 'HTTParty'

class CurrentHuricane
  attr_reader :zip_code, :hurricane
  def initialize(zip_code: nil)
    @zip_code = zip_code
    @hurricane = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/currenthurricane/view.json)
  end
end

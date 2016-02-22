class Astronomy
  attr_reader :zip_code

  def initialize(zip_code: nil)
    @zip_code = zip_code
    @astronomy = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/astronomy/q/"#{@zip_code}".json)
  end
end

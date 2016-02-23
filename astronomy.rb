require 'httparty'
require 'json'

class Astronomy

  def initialize(location: nil)
    @location = location
    @results = JSON.parse(File.read("astronomy.json"))
    # @astronomy = HTTParty.get(http://api.wunderground.com/api/"#{ENV['WUNDERGROUND_KEY']}"/astronomy/q/"#{@location}".json)
  end

  def sunrise
    hour = @results["sun_phase"]["sunrise"]["hour"]
    minute = @results["sun_phase"]["sunrise"]["minute"]
    return "Sunrise is at #{hour.to_i}:#{minute.to_i} AM."
  end

  def sunset
    hour = @results["sun_phase"]["sunset"]["hour"]
    minute = @results["sun_phase"]["sunset"]["minute"]
    hour = hour.to_i - 12
    minute = minute.to_i
    if minute < 10
      return "Sunset is at #{hour}:0#{minute} PM."
    else
     return "Sunset is at #{hour}:#{minute} PM."
   end
  end
end

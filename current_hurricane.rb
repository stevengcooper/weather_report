require 'httparty'
require 'json'

class CurrentHuricane
  def initialize(location: nil)
    @location = location
    @results = JSON.parse(File.read("hurricane.json"))
    # @results = HTTParty.get(http://api.wunderground.com/api/ENV["WUNDERGROUND_KEY"]/currenthurricane/view.json)
  end

  def current_hurricanes
    canes = []
    @results["currenthurricane"][0..-1].each do |x|
      name = x["stormInfo"]["stormName_Nice"]
      lattitude = x["Current"]["lat"]
      longitude = x["Current"]["lon"]
      category = x["Current"]["Time"]["SaffirSimpsonCategory"]
      wind_speed = x["Current"]["WindSpeed"]["Mph"]
      wind_gust = x["Current"]["WindGust"]["Mph"]
      movement = x["Current"]["Movement"]["Text"]
      travel_speed = x["Current"]["Fspeed"]["Mph"]
      canes << [name, category, lattitude, longitude, wind_speed, wind_gust, movement, travel_speed]
    end
    # canes.each {|x| puts x}
    canes.each {|x| return "Storm #{x[0]} is at category #{x[1]}. It is currently at #{x[2]} lattitude and #{x[3]} longitude and is traveling #{x[6]} at #{x[7]} Mph. It has sustained winds of #{x[4]} Mph, and gusts have been recorded at #{x[5]} Mph."}
  end
end

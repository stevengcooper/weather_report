require 'httparty'
require './condition.rb'
require './current_hurricane.rb'
require './forecast.rb'
require './astronomy.rb'
require './alerts.rb'

class User
  attr_accessor :location
  def initialize(location)
    @location = location
  end

  def format_location
    if @location == /(Durham,)\s(NC)/
      @location = "NC/Durham"
    else @location == /(Durham,)\s(North Carolina)/
      @location = "NC/Durham"
    end
  end
  #
  # def weather_forecast
  #   c = Conditions.new(@location)
  #
  #   puts "Location: #{c.location}"
  #   puts "Current Temp (F) #{c.tempature}"
  #   puts "Current Wind (Mph) #{c.wind}"
  #   puts "Current Humidity: #{c.humidity}"
  #   puts "Total Precipitation Today: #{c.rain_today}"
  #   puts "Tempature feels like (F) #{c.feels_like}"
  #
  #   astr = Astronomy.new(@location)
  #
  #   puts astr.sunrise
  #   puts astr.sunset
  #
  #   f = Forecast(@location)
  #   puts "Your extended forecast is"
  #   puts f.forecast
  #
  #   alert = Alert.new(@location)
  #   puts alert.alert_exists
  #
  #   cane = CurrentHuricane.new()
  #   puts cane.current_hurricane
  # end
end

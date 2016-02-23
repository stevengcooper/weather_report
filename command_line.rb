require 'byebug'
require 'httparty'
require 'json'
require './condition.rb'
require './current_hurricane.rb'
require './forecast.rb'
require './astronomy.rb'
require './alerts.rb'
require './user.rb'
require 'byebug'


puts "What City, State are you located in?"
location = gets.chomp

person = User.new(location)
location = person.format_location

# person.weather_forecast

c = Conditions.new(person.location)

puts "Location: #{c.location}"
puts "Current Temp (F) #{c.tempature}"
puts "Current Wind (Mph) #{c.wind}"
puts "Current Humidity: #{c.humidity}"
puts "Total Precipitation Today: #{c.rain_today}"
puts "Tempature feels like (F) #{c.feels_like}"

astr = Astronomy.new(person.location)

puts astr.sunrise
puts astr.sunset

f = Forecast(person.location)
puts "Your extended forecast is"
puts f.forecast

alert = Alert.new(person.location)
puts alert.alert_exists

cane = CurrentHuricane.new()
puts cane.current_hurricane

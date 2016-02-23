require 'byebug'
require 'httparty'
require 'json'
require './condition.rb'
# require './current_hurricane.rb'
require './forecast.rb'
require './astronomy.rb'
require './alerts.rb'


puts "What City, State are you located in?"
location = gets.chomp

person = User.new(location)
location = person.format_location

c = Conditions.new(location)

puts "Location: #{c.location}"
puts "Current Temp (F) #{c.tempature}"
puts "Current Wind (Mph) #{c.wind}"
puts "Current Humidity: #{c.humidity}"
puts "Total Precipitation Today: #{c.rain_today}"
puts "Tempature feels like (F) #{c.feels_like}"

astr = Astronomy.new(location)

puts astr.sunrise
puts astr.sunset

f = Forecast(location)
puts "Your extended forecast is"
puts f.forecast

alert = Alert.new(location)
puts alert.alert_exists

# cane = CurrentHuricane.new()
# puts cane.current_hurricane

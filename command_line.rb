require 'byebug'
require 'HTTParty'
require './conditions'
require './current_hurricane'
require './forecast_ten_day'
require './astronomy'
require './alerts'


puts "What is your zip code?"
location = gets.chomp


c = Conditions.new(zip_code)

puts "Location: #{c.location}"
puts "Current Temp (F) #{c.tempature}"

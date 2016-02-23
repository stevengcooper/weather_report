require 'byebug'
require 'HTTParty'
require './conditions'
require './current_hurricane'
require './forecast'
require './astronomy'
require './alerts'





c = Conditions.new(location)

puts "Location: #{c.location}"
puts "Current Temp (F) #{c.tempature}"

require 'httparty'

class User
  attr_writer :location
  def initialize(location:)
    @location = location
  end

  def format_location(location)
    if location == /(Durham,)\s(NC)/
      location = "NC/Durham"
    else location == /(Durham,)\s(North Carolina)/
      location = "NC/Durham"
    end
  end
end

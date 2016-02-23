require 'httparty'

class User
  attr_writer :location
  def initialize(location)
    @location = location
  end

  def format_location
    if @location == /(Durham,)\s(NC)/
      @location = "NC/Durham"
    else @location == /(Durham,)\s(North Carolina)/
      @location = "NC/Durham"
    end
    @location
  end
end
